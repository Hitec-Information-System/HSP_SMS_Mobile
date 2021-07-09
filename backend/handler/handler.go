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
	r.HandleFunc("/data", a.getData).Methods("GET")
	r.HandleFunc("/signin", a.getUser).Methods("POST")
	r.HandleFunc("/signout", signOutHandler).Methods("POST")
	r.HandleFunc("/token", refreshHandler).Methods("POST")
	r.HandleFunc("/todo", CreateTodo).Methods("POST")

	return a

}

func (a *AppHandler) Close() {
	a.db.Close()
}

func indexHandler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprint(w, "Hello world")
}

func (a *AppHandler) getData(w http.ResponseWriter, r *http.Request) {
	results, err := a.db.GetData()

	if err != nil {
		panic(err)
	}

	rd.JSON(w, http.StatusOK, results)
	return

}

func (a *AppHandler) getUser(w http.ResponseWriter, r *http.Request) {
	var u model.User

	if err := json.NewDecoder(r.Body).Decode(&u); err != nil {
		rd.JSON(w, http.StatusUnprocessableEntity, "Invalid json provided")
		return
	}

	user, err := a.db.GetUser(u.ID, u.Password)
	if err != nil {
		panic(err)
	}

	if (model.User{}) == user {
		rd.JSON(w, http.StatusOK, "Account not registered")
		return
	}

	// compare the user from the request, with the one we defined
	if user.ID != u.ID || user.Password != u.Password {
		rd.JSON(w, http.StatusUnauthorized, "Please, provide valid login details")
		return
	}

	ts, err := CreateToken(user.ID)
	if err != nil {
		rd.JSON(w, http.StatusUnprocessableEntity, err.Error())
		return

	}

	saveErr := CreateAuth(user.ID, ts)
	if saveErr != nil {
		rd.JSON(w, http.StatusUnprocessableEntity, saveErr.Error())
		return

	}

	tokens := map[string]string{
		"access_token":  ts.AccessToken,
		"refresh_token": ts.RefreshToken,
	}

	rd.JSON(w, http.StatusOK, tokens)
	return

}
