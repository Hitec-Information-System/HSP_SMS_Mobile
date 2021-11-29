package handler

import (
	"bytes"
	"encoding/json"
	"encoding/xml"
	"fmt"
	"net/http"
	"strings"

	"github.com/gorilla/mux"
	"github.com/unrolled/render"
	"github.com/urfave/negroni"
	"hitecis.co.kr/hwashin_nfc/model"
	"hitecis.co.kr/hwashin_nfc/repository"
)

var rd *render.Render = render.New()

const buildingFlag = "BUILDING"
const lineFlag = "LINE"
const forkliftFlag = "FORKLIFT"
const noticeFlag = "NOTICE"
const safetyFlag = "SAFETY_OFFER"
const statusFlag = "STATUS"

type AppHandler struct {
	http.Handler
	db repository.DBRepository
}

func MakeHandler() *AppHandler {
	r := mux.NewRouter()

	n := negroni.New()

	n.UseHandler(r)

	a := &AppHandler{
		Handler: n,
		db:      repository.NewDBRepository(),
	}

	r.HandleFunc("/", indexHandler)
	r.HandleFunc("/sign-in", a.getUser).Methods("POST")
	r.HandleFunc("/pwd", a.updatePassword).Methods("POST")

	r.HandleFunc("/norm", a.fetchCheckStandard).Methods("GET")

	r.HandleFunc("/check", a.fetchCheckList).Methods("GET")
	r.HandleFunc("/check", a.saveCheckList).Methods("POST")
	r.HandleFunc("/check/images", imgUploadHandler).Methods("POST")

	r.HandleFunc("/monitor", a.fetchCheckStatusTodayByGubun).Methods("GET")

	r.HandleFunc("/nfc", a.saveData).Methods("POST")

	r.HandleFunc("/board", a.fetchBoard).Methods("GET")
	r.HandleFunc("/board/{boardKey}", a.fetchBoardItem).Methods("GET")

	r.HandleFunc("/board-all", a.fetchBoardAll).Methods("GET")

	r.HandleFunc("/board/images", boardUploadHandler).Methods("POST")
	r.HandleFunc("/board", a.saveBoardItem).Methods("POST")

	r.HandleFunc("/progress", a.fetchCurrentProgress).Methods("GET")

	r.HandleFunc("/apk/{version}", a.downloadApk).Methods("GET")
	r.HandleFunc("/apk", a.fetchApkInfo).Methods("GET")
	r.HandleFunc("/apk", a.fetchApkInfo).Methods("POST")

	// for test
	r.HandleFunc("/data", a.getData).Methods("GET")
	r.HandleFunc("/proto", a.getTestData).Methods("POST")

	return a
}

func (a *AppHandler) Close() {
	a.db.Close()
}

func indexHandler(w http.ResponseWriter, _ *http.Request) {
	fmt.Fprint(w, "Hello world")
}

// 점검 기준(회차,일상/주간 여부)
func (a *AppHandler) fetchCheckStandard(w http.ResponseWriter, r *http.Request) {

	queryString := r.URL.Query()
	compCd := queryString.Get("comp-cd")
	objFlag := queryString.Get("obj-flag")

	if compCd == "" || objFlag == "" {
		rd.JSON(w, http.StatusBadRequest, map[string]interface{}{
			"msg": "invalid json provided",
		})
		return
	}

	sessionsQuery := fmt.Sprintf(`
	BEGIN 
		SMS_PK_CM.GET_CHK_CHASU_LIST(
			'%s', 
			'%s',
			:CURSOR1
			); 
	END;
	`, compCd, objFlag)

	fmt.Println(sessionsQuery)

	sessions, err := a.db.GetSPDataWithCursor(sessionsQuery)
	if err != nil {
		rd.JSON(w, http.StatusBadRequest, map[string]interface{}{
			"msg": err.Error(),
		})
		return
	}

	intervalsQuery := fmt.Sprintf(`
	BEGIN 
		SMS_PK_CM.GET_CHK_INTERVAL_LIST(
			'%s', 
			'%s',
			:CURSOR1
			); 
	END;
	`,
		compCd,
		objFlag,
	)

	fmt.Println(intervalsQuery)

	intervals, err := a.db.GetSPDataWithCursor(intervalsQuery)
	if err != nil {
		rd.JSON(w, http.StatusBadRequest, map[string]interface{}{
			"msg": err.Error(),
		})
		return
	}

	results := map[string]interface{}{
		"sessions":  sessions,
		"intervals": intervals,
	}

	rd.JSON(w, http.StatusOK, results)
}

func (a *AppHandler) fetchCheckList(w http.ResponseWriter, r *http.Request) {

	queryString := r.URL.Query()
	compCd := queryString.Get("comp-cd")
	systemFlag := queryString.Get("sys-flag")
	userId := queryString.Get("user")
	checkNo := queryString.Get("check-no")
	interval := queryString.Get("interval")
	session := queryString.Get("session")
	objCd := queryString.Get("obj-cd")

	if compCd == "" || userId == "" || checkNo == "" {
		rd.JSON(w, http.StatusBadRequest, map[string]interface{}{
			"msg": "invalid json provided",
		})
		return
	}

	headerQuery := fmt.Sprintf(`
	BEGIN
		SMS_PK_5010.P_FIND_CHKLIST_H(
			'%s', 
			'%s', 
			'%s', 
			'%s', 
			'%s', 
			'%s', 
			'%s',
			:CURSOR1
			);
	END;
	`,
		compCd,
		systemFlag,
		userId,
		objCd,
		checkNo,
		interval,
		session,
	)

	fmt.Println(headerQuery)

	header, err := a.db.GetSPDataWithCursor(headerQuery)
	if err != nil {
		rd.JSON(w, http.StatusBadRequest, map[string]interface{}{
			"msg": err.Error(),
		})
		return
	}

	/// header에서 데이터 추출
	//  - 추가 데이터 받아오기 위해
	objGubun := header[0]["OBJ_GUBUN"]
	checkListNo := header[0]["CHKLIST_NO"]
	itemCd := ""
	imgNo := ""

	objCdHeader := header[0]["OBJ_CD"]
	sessionHeader := header[0]["CHK_CHASU"]

	detailsQuery := fmt.Sprintf(`
	BEGIN
		SMS_PK_5010.P_FIND_CHKLIST_D(
			'%s', 
			'%s', 
			'%s', 
			'%s', 
			'%s', 
			'%s', 
			'%s', 
			:CURSOR1
			);
	END;
	`, compCd,
		systemFlag,
		userId,
		objCdHeader,
		checkListNo,
		interval,
		sessionHeader,
	)

	fmt.Println(detailsQuery)

	details, err := a.db.GetSPDataWithCursor(detailsQuery)
	if err != nil {
		rd.JSON(w, http.StatusBadRequest, map[string]interface{}{
			"msg": err.Error(),
		})
		return
	}

	detailsImgQuery := fmt.Sprintf(`
	BEGIN
		SMS_PK_5010.P_FIND_CHKLIST_D_IMG(
			'%s', 
			'%s', 
			'%s', 
			'%s', 
			'%s', 
			'%s', 
			:CURSOR1
			);
	END;
	`, compCd,
		systemFlag,
		userId,
		checkListNo,
		itemCd,
		imgNo,
	)

	fmt.Println(detailsImgQuery)

	detailsImg, err := a.db.GetSPDataWithCursor(detailsImgQuery)
	if err != nil {
		rd.JSON(w, http.StatusBadRequest, map[string]interface{}{
			"msg": err.Error(),
		})
		return
	}

	for _, detail := range details {
		arr := []interface{}{}
		for _, img := range detailsImg {
			if detail["CHK_ITEM_CD"] == img["CHK_ITEM_CD"] {
				arr = append(arr, img)
			}
		}
		detail["IMGS"] = arr
	}

	sessionsQuery := fmt.Sprintf(`
	BEGIN 
		SMS_PK_CM.GET_CHK_CHASU_LIST(
			'%s', 
			'%s',
			:CURSOR1
			); 
	END;
	`,
		compCd,
		objGubun,
	)

	fmt.Println(sessionsQuery)

	sessions, err := a.db.GetSPDataWithCursor(sessionsQuery)
	if err != nil {
		rd.JSON(w, http.StatusBadRequest, map[string]interface{}{
			"msg": err.Error(),
		})
		return
	}

	intervalsQuery := fmt.Sprintf(`
	BEGIN 
		SMS_PK_CM.GET_CHK_INTERVAL_LIST(
			'%s', 
			'%s',
			:CURSOR1
			); 
	END;
	`,
		compCd,
		objGubun,
	)

	fmt.Println(intervalsQuery)

	intervals, err := a.db.GetSPDataWithCursor(intervalsQuery)
	if err != nil {
		rd.JSON(w, http.StatusBadRequest, map[string]interface{}{
			"msg": err.Error(),
		})
		return
	}

	results := map[string]interface{}{
		"header":    header[0],
		"details":   details,
		"sessions":  sessions,
		"intervals": intervals,
	}

	rd.JSON(w, http.StatusOK, results)
}

func (a *AppHandler) saveCheckList(w http.ResponseWriter, r *http.Request) {
	var params map[string]interface{}

	if err := json.NewDecoder(r.Body).Decode(&params); err != nil {
		rd.JSON(w, http.StatusBadRequest, "Invalid json provided")
	}

	compCd := params["comp-cd"].(string)
	systemFlag := params["sys-flag"].(string)
	userId := params["user-id"].(string)
	xmlH := params["xml-h"].(string)
	xmlD := params["xml-d"].(string)
	xmlI := params["xml-i"].(string)

	query := fmt.Sprintf(`
	BEGIN 
		SMS_PK_5010.P_SAVE_CHKLIST(
			'%s',
			'%s',
			'%s',
			'%s',
			'%s',
			'%s',
			:PO_RST
			); 
	END;`,
		compCd,
		systemFlag,
		userId,
		xmlH,
		xmlD,
		xmlI,
	)

	fmt.Println(query)

	results, err := a.db.GetSPDataWithString(query)

	if err != nil {
		rd.JSON(w, http.StatusBadRequest, map[string]interface{}{
			"MSG": err.Error(),
		})
		return
	}

	if results != "OK" {
		rd.JSON(w, http.StatusBadRequest, map[string]interface{}{
			"MSG": "저장하는 도중 에러가 발생하였습니다",
		})
		return
	}

	rd.JSON(w, http.StatusOK, results)
}

// 점검 기록 리스트
// - Gubun: 시설,라인,지게차 "구분" (Procedure 이름에 따라감)
func (a *AppHandler) fetchCheckStatusTodayByGubun(w http.ResponseWriter, r *http.Request) {

	var buf bytes.Buffer

	queryString := r.URL.Query()
	compCd := queryString.Get("comp-cd")
	systemFlag := queryString.Get("sys-flag")
	userId := queryString.Get("user")
	flagData := queryString.Get("flag")

	xmlElem := model.NewDataSet{}
	xmlElem.Table1.COLUMNID = "OBJ_GUBUN"
	xmlElem.Table1.VALUE = flagData
	xml.NewEncoder(&buf).Encode(&xmlElem)

	if compCd == "" || userId == "" {
		rd.JSON(w, http.StatusBadRequest, map[string]interface{}{
			"msg": "invalid json provided",
		})
		return
	}

	query := fmt.Sprintf(`
	BEGIN
		SMS_PK_5010.P_FIND_OBJ_CHKLIST_TODAY_JSON(
			'%s', 
			'%s', 
			'%s', 
			'%s',
			:CURSOR1
			);
	END;
	`,
		compCd,
		systemFlag,
		userId,
		buf.String(),
	)

	fmt.Println(query)

	results, err := a.db.GetSPDataWithLOB(query)

	if err != nil {

		fmt.Println(err.Error())

		if strings.Contains(err.Error(), "호출 중인 프로그램 단위를 찾을 수 없습니다") {
			var resultsRe []map[string]interface{}
			var errRe error

			// 요구사항: 실패시 최대 5번 더 시도 하여 보기
			// TODO: 확인하고 로직 삭제
			for i := 0; i < 5; i++ {
				fmt.Println(i)
				resultsRe, errRe = a.db.GetSPDataWithLOB(query)
				if errRe == nil {
					results = resultsRe
					break
				}
			}

			if errRe != nil {
				fmt.Println(errRe.Error())
				rd.JSON(w, http.StatusBadRequest, map[string]interface{}{
					"msg": errRe.Error(),
				},
				)
				return
			}

		} else {
			rd.JSON(w, http.StatusBadRequest, map[string]interface{}{
				"msg": err.Error(),
			},
			)
			return
		}

	}

	rd.JSON(w, http.StatusOK, results)

}

// REF: 저장을 위한 공통화된 작업임
func (a *AppHandler) saveData(w http.ResponseWriter, r *http.Request) {
	var params map[string]interface{}

	if err := json.NewDecoder(r.Body).Decode(&params); err != nil {
		rd.JSON(w, http.StatusBadRequest, "Invalid json provided")
	}

	// params 정의
	compCd := params["comp-cd"].(string)
	userId := params["user-id"].(string)
	transFlag := params["trans-flag"].(string)
	transData := params["trans-data"].(string)

	query := fmt.Sprintf(`
	BEGIN 
		SMS_PK_TRANS.P_SAVE_TRANS(
			'%s',
			'%s',
			'%s',
			'%s',
			:PO_RST
			); 
	END;`,
		compCd,
		userId,
		transFlag,
		transData,
	)

	fmt.Println(query)

	result, err := a.db.GetSPDataWithString(query)

	if err != nil {
		rd.JSON(w, http.StatusBadRequest, map[string]interface{}{
			"MSG":    "NG",
			"RESULT": err.Error(),
		})
		return
	}

	results := map[string]interface{}{
		"MSG":    "OK",
		"RESULT": result,
	}

	rd.JSON(w, http.StatusOK, results)
}

func (a *AppHandler) fetchBoard(w http.ResponseWriter, r *http.Request) {

	queryString := r.URL.Query()
	board := queryString.Get("board")

	results, err := a.fetchBoardList(r, board)
	if err != nil {
		rd.JSON(w, http.StatusBadRequest, map[string]interface{}{
			"msg": err.Error(),
		})
	}

	rd.JSON(w, http.StatusOK, results)

}

func (a *AppHandler) fetchBoardAll(w http.ResponseWriter, r *http.Request) {

	building, err := a.fetchProgress(r, buildingFlag)
	if err != nil {
		rd.JSON(w, http.StatusBadRequest, map[string]interface{}{
			"MSG": err.Error(),
		})
		return
	}

	line, err := a.fetchProgress(r, lineFlag)
	if err != nil {
		rd.JSON(w, http.StatusBadRequest, map[string]interface{}{
			"MSG": err.Error(),
		})
		return
	}

	forklift, err := a.fetchProgress(r, forkliftFlag)
	if err != nil {
		rd.JSON(w, http.StatusBadRequest, map[string]interface{}{
			"MSG": err.Error(),
		})
		return
	}

	status := map[string]interface{}{
		buildingFlag: building,
		lineFlag:     line,
		forkliftFlag: forklift,
	}

	notice, err := a.fetchBoardList(r, "NOTICE")
	if err != nil {
		rd.JSON(w, http.StatusBadRequest, map[string]interface{}{
			"msg": err.Error(),
		})
	}

	safety, err := a.fetchBoardList(r, "SAFETY_OFFER")
	if err != nil {
		rd.JSON(w, http.StatusBadRequest, map[string]interface{}{
			"msg": err.Error(),
		})
	}

	results := map[string]interface{}{
		statusFlag: status,
		noticeFlag: notice,
		safetyFlag: safety,
	}

	rd.JSON(w, http.StatusOK, results)

}

func (a *AppHandler) fetchBoardItem(w http.ResponseWriter, r *http.Request) {

	vars := mux.Vars(r)
	boardKey, ok := vars["boardKey"]
	if !ok {
		rd.JSON(w, http.StatusBadRequest, map[string]interface{}{
			"msg": "boardKey is invalid",
		})
		return
	}

	queryString := r.URL.Query()
	compCd := queryString.Get("comp-cd")
	systemFlag := queryString.Get("sys-flag")
	userId := queryString.Get("user")
	board := queryString.Get("board")

	if compCd == "" || userId == "" || systemFlag == "" || board == "" || boardKey == "" {
		rd.JSON(w, http.StatusBadRequest, map[string]interface{}{
			"msg": "invalid json provided",
		})
		return
	}

	query := fmt.Sprintf(`
	BEGIN
		SMS_PK_9010.P_FIND_BOARD(  
			'%s',  
			'%s',   
			'%s',  
			'%s', 
			'%s', 
			:CURSOR1,
			:CURSOR2
			);
	END;
	`, compCd,
		systemFlag,
		userId,
		board,
		boardKey,
	)

	fmt.Println(query)

	queryResults, err := a.db.GetSPDataWith2Cursor(query)
	if err != nil {
		rd.JSON(w, http.StatusBadRequest, map[string]interface{}{
			"msg": err.Error(),
		})
		return
	}

	results := queryResults["cursor1"].([]map[string]interface{})[0]
	results["IMGS"] = queryResults["cursor2"]

	rd.JSON(w, http.StatusOK, results)

}

func (a *AppHandler) saveBoardItem(w http.ResponseWriter, r *http.Request) {
	var params map[string]interface{}

	if err := json.NewDecoder(r.Body).Decode(&params); err != nil {
		rd.JSON(w, http.StatusBadRequest, "Invalid json provided")
	}

	// params 정의
	compCd := params["comp-cd"].(string)
	systemFlag := params["sys-flag"].(string)
	userId := params["user"].(string)
	boardId := params["board"].(string)
	boardPk := params["board-pk"].(string)
	boardTitle := params["board-title"].(string)
	isTopFixed := params["is-top-fixed"].(string)
	contents := params["contents"].(string)
	remark := params["remark"].(string)
	xmlAtt := params["xml-att"].(string)

	query := fmt.Sprintf(`
	BEGIN 
		SMS_PK_9010.P_SAVE_BOARD(
			'%s',
			'%s',
			'%s',
			'%s',
			'%s',
			'%s',
			'%s',
			'%s',
			'%s',
			'%s',
			:PO_RST
			); 
	END;`,
		compCd,
		systemFlag,
		userId,
		boardId,
		boardPk,
		boardTitle,
		isTopFixed,
		contents,
		remark,
		xmlAtt,
	)

	fmt.Println(query)

	resultsMsg, err := a.db.GetSPDataWithString(query)

	if err != nil {
		rd.JSON(w, http.StatusBadRequest, map[string]interface{}{
			"msg": err.Error(),
		})
		return
	}

	results := map[string]interface{}{
		"msg": resultsMsg,
	}

	rd.JSON(w, http.StatusOK, results)

}

func (a *AppHandler) fetchCurrentProgress(w http.ResponseWriter, r *http.Request) {

	queryString := r.URL.Query()
	objGubun := queryString.Get("obj")

	results, err := a.fetchProgress(r, objGubun)
	if err != nil {
		rd.JSON(w, http.StatusBadRequest, map[string]interface{}{
			"msg": err.Error(),
		})
		return
	}

	rd.JSON(w, http.StatusOK, results)

}

func (a *AppHandler) saveApk(w http.ResponseWriter, r *http.Request) {

}
