package handler

import (
	"encoding/json"
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
	r.HandleFunc("/token", refreshHandler).Methods("POST")
	r.HandleFunc("/todo", CreateTodo).Methods("POST")
	// for test
	r.HandleFunc("/data", a.getData).Methods("GET")
	r.HandleFunc("/proto", a.getTestData).Methods("POST")

	return a

}

func (a *AppHandler) Close() {
	a.db.Close()
}

func indexHandler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprint(w, "Hello world")
}

func (a *AppHandler) getData(w http.ResponseWriter, r *http.Request) {

	results, err := a.db.GetQueryData("SELECT * FROM SMS_B_MJ_CD")

	if err != nil {
		panic(err)
	}

	rd.JSON(w, http.StatusOK, results)

}

func (a *AppHandler) getUser(w http.ResponseWriter, r *http.Request) {
	var u map[string]interface{}

	if err := json.NewDecoder(r.Body).Decode(&u); err != nil {
		rd.JSON(w, http.StatusUnprocessableEntity, "Invalid json provided")
	}

	user, err := a.db.GetUser(u["id"].(string), u["pwd"].(string))
	if err != nil {
		panic(err)
	}

	if (model.User{}) == user {
		rd.JSON(w, http.StatusUnprocessableEntity, "Account not registered")
		return
	}

	// In this project, token rather bothers app logics since app keeps requiring user ID

	// ts, err := CreateToken(user.ID)
	// if err != nil {
	// 	rd.JSON(w, http.StatusUnprocessableEntity, err.Error())
	// 	return
	// }

	// saveErr := CreateAuth(user.ID, ts)
	// if saveErr != nil {
	// 	rd.JSON(w, http.StatusUnprocessableEntity, saveErr.Error())
	// 	return
	// }

	// tokens := map[string]interface{}{
	// 	"accessToken":   ts.AccessToken,
	// 	"refreshToken":  ts.RefreshToken,
	// 	"expiration":    ts.RtExpires,
	// 	"scopes":        []string{},
	// 	"tokenEndpoint": "http://192.168.0.117:8080/token",
	// }

	rd.JSON(w, http.StatusOK, user)

}

func (a *AppHandler) getTestData(w http.ResponseWriter, r *http.Request) {
	var params map[string]interface{}

	if err := json.NewDecoder(r.Body).Decode(&params); err != nil {
		rd.JSON(w, http.StatusUnprocessableEntity, "Invalid json provided")
	}

	compCd := params["COMP_CD"].(string)

	if len(compCd) < 1 {
		rd.JSON(w, http.StatusUnprocessableEntity, "Invalid json provided")
	}

	query := fmt.Sprintf(`BEGIN SMS_PK_JSON.GET_OBJ_GUBUN_LIST(%s,:1); END;`, compCd)

	results, err := a.db.GetSPDataWithLOC(query)

	if err != nil {
		panic(err)
	}

	rd.JSON(w, http.StatusOK, results)
}
