package handler

import (
	"encoding/json"
	"fmt"
	"net/http"

	"hitecis.co.kr/hwashin_nfc/model"
)

func CreateTodo(w http.ResponseWriter, r *http.Request) {
	var td *model.Todo

	if err := json.NewDecoder(r.Body).Decode(&td); err != nil {
		rd.JSON(w, http.StatusUnprocessableEntity, "invalid json")
		return
	}

	fmt.Println(td)

	// Extract the access token metadata
	metadata, err := ExtractTokenMetadata(r)
	if err != nil {
		rd.JSON(w, http.StatusUnauthorized, "unauthorized")
		return
	}

	userid, err := FetchAuth(metadata)
	if err != nil {
		rd.JSON(w, http.StatusUnauthorized, err.Error())
		return
	}

	td.UserID = userid

	rd.JSON(w, http.StatusCreated, td)
	return

}
