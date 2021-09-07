package handler

import (
	"encoding/json"
	"fmt"
	"net/http"
)

// for test

func (a *AppHandler) getData(w http.ResponseWriter, r *http.Request) {

	results, err := a.db.GetQueryData("SELECT * FROM SMS_B_MJ_CD")

	if err != nil {
		panic(err)
	}

	rd.JSON(w, http.StatusOK, results)

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
