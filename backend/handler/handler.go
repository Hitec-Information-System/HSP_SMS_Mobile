package handler

import (
	"fmt"
	"net/http"

	"github.com/gorilla/mux"
	"github.com/unrolled/render"
	"github.com/urfave/negroni"
	"hitecis.co.kr/hwashin_nfc/repository"
)

var rd *render.Render = render.New()

type AppHandler struct {
	http.Handler
	db repository.DBRepository
}

func MakeHandler(dbConn string) *AppHandler {
	r := mux.NewRouter()

	n := negroni.New()

	n.UseHandler(r)

	a := &AppHandler{
		Handler: n,
		db:      repository.NewDBRepository(dbConn),
	}

	r.HandleFunc("/", indexHandler)
	r.HandleFunc("/data", a.getData).Methods("GET")
	r.HandleFunc("/signin", signInHandler).Methods("POST")

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
}
