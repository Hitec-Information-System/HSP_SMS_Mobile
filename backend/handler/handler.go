package handler

import (
	"bytes"
	"encoding/json"
	"encoding/xml"
	"fmt"
	"net/http"

	"github.com/gorilla/mux"
	"github.com/unrolled/render"
	"github.com/urfave/negroni"
	"hitecis.co.kr/hwashin_nfc/model"
	"hitecis.co.kr/hwashin_nfc/repository"
)

var rd *render.Render = render.New()

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

	r.HandleFunc("/norm", a.fetchCheckStandard).Methods("GET")

	r.HandleFunc("/check", a.fetchCheckList).Methods("GET")
	r.HandleFunc("/check", a.saveCheckList).Methods("POST")

	r.HandleFunc("/gubun", a.fetchCheckStatusTodayByGubun).Methods("GET")
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
		rd.JSON(w, http.StatusUnprocessableEntity, map[string]interface{}{
			"msg": "invalid json provided",
		})
		return
	}

	sessionsQuery := fmt.Sprintf(`
	BEGIN 
		SMS_PK_CM.GET_CHK_CHASU_LIST('%s', '%s',:CURSOR1); 
	END;
	`, compCd, objFlag)

	fmt.Println(sessionsQuery)

	sessions, err := a.db.GetSPDataWithCursor(sessionsQuery)
	if err != nil {
		rd.JSON(w, http.StatusUnprocessableEntity, map[string]interface{}{
			"msg": err.Error(),
		})
		return
	}

	intervalsQuery := fmt.Sprintf(`
	BEGIN 
		SMS_PK_CM.GET_CHK_INTERVAL_LIST('%s', '%s',:CURSOR1); 
	END;
	`, compCd, objFlag)

	fmt.Println(intervalsQuery)

	intervals, err := a.db.GetSPDataWithCursor(intervalsQuery)
	if err != nil {
		rd.JSON(w, http.StatusUnprocessableEntity, map[string]interface{}{
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

	if compCd == "" || userId == "" || checkNo == "" {
		rd.JSON(w, http.StatusUnprocessableEntity, map[string]interface{}{
			"msg": "invalid json provided",
		})
		return
	}

	headerQuery := fmt.Sprintf(`
	BEGIN
		SMS_PK_5010.P_FIND_CHKLIST_H('%s', '%s', '%s', '%s', '%s', '',:CURSOR1);
	END;
	`, compCd, systemFlag, userId, checkNo, interval)

	fmt.Println(headerQuery)

	header, err := a.db.GetSPDataWithCursor(headerQuery)
	if err != nil {
		rd.JSON(w, http.StatusUnprocessableEntity, map[string]interface{}{
			"msg": err.Error(),
		})
		return
	}

	detailsQuery := fmt.Sprintf(`
	BEGIN
		SMS_PK_5010.P_FIND_CHKLIST_D('%s', '%s', '%s', '%s', '일상',:CURSOR1);
	END;
	`, compCd, systemFlag, userId, checkNo)

	fmt.Println(detailsQuery)

	details, err := a.db.GetSPDataWithCursor(detailsQuery)
	if err != nil {
		rd.JSON(w, http.StatusUnprocessableEntity, map[string]interface{}{
			"msg": err.Error(),
		})
		return
	}

	/// header에서 obj_gubun 뽑아내기
	//  - 주기 데이터 받아오기 위해
	objGubun := header[0]["OBJ_GUBUN"]

	sessionsQuery := fmt.Sprintf(`
	BEGIN 
		SMS_PK_CM.GET_CHK_CHASU_LIST('%s', '%s',:CURSOR1); 
	END;
	`, compCd, objGubun)

	fmt.Println(sessionsQuery)

	sessions, err := a.db.GetSPDataWithCursor(sessionsQuery)
	if err != nil {
		rd.JSON(w, http.StatusUnprocessableEntity, map[string]interface{}{
			"msg": err.Error(),
		})
		return
	}

	intervalsQuery := fmt.Sprintf(`
	BEGIN 
		SMS_PK_CM.GET_CHK_INTERVAL_LIST('%s', '%s',:CURSOR1); 
	END;
	`, compCd, objGubun)

	fmt.Println(intervalsQuery)

	intervals, err := a.db.GetSPDataWithCursor(intervalsQuery)
	if err != nil {
		rd.JSON(w, http.StatusUnprocessableEntity, map[string]interface{}{
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
		rd.JSON(w, http.StatusUnprocessableEntity, "Invalid json provided")
	}

	compCd := params["compCd"].(string)
	systemFlag := params["sysFlag"].(string)
	userId := params["userId"].(string)
	xmlH := params["xmlH"].(string)
	xmlD := params["xmlD"].(string)
	xmlI := params["xmlI"].(string)

	query := fmt.Sprintf(`BEGIN SMS_PK_5010.P_SAVE_CHKLIST('%s','%s','%s','%s','%s','%s',:1); END;`, compCd, systemFlag, userId, xmlH, xmlD, xmlI)

	fmt.Println(query)

	results, err := a.db.GetSPDataWithString(query)

	if err != nil {
		panic(err)
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
		rd.JSON(w, http.StatusUnprocessableEntity, map[string]interface{}{
			"msg": "invalid json provided",
		})
		return
	}

	query := fmt.Sprintf(`
	BEGIN
		SMS_PK_5010.P_FIND_OBJ_CHKLIST_TODAY_M('%s', '%s', '%s', '%s',:CURSOR1, :CURSOR2);
	END;
	`, compCd, systemFlag, userId, buf.String())

	fmt.Println(query)

	results, err := a.db.GetSPDataWith2Cursor(query)
	if err != nil {
		rd.JSON(w, http.StatusUnprocessableEntity, map[string]interface{}{
			"msg": err.Error(),
		})
		return
	}

	rd.JSON(w, http.StatusOK, results)

}
