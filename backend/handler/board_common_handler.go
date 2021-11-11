package handler

import (
	"errors"
	"fmt"
	"net/http"
)

func (a *AppHandler) fetchProgress(r *http.Request, flag string) (map[string]interface{}, error) {
	var results map[string]interface{}
	var err error

	queryString := r.URL.Query()
	compCd := queryString.Get("comp-cd")
	systemFlag := queryString.Get("sys-flag")
	userId := queryString.Get("user")

	if compCd == "" || userId == "" || systemFlag == "" || flag == "" {
		err = errors.New("invalid json provided")
		return results, err
	}

	query := fmt.Sprintf(`
	BEGIN
		SMS_PK_5010.P_FIND_CHK_NOWCHASU_RPT1(  
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
		flag,
	)

	fmt.Println(query)

	queryResults, newErr := a.db.GetSPDataWithCursor(query)
	if newErr != nil {
		err = newErr
		return results, err
	}

	if queryResults == nil {
		results = map[string]interface{}{}
		return results, err
	}

	results = queryResults[0]

	return results, err

}

func (a *AppHandler) fetchBoardList(r *http.Request, flag string) ([]map[string]interface{}, error) {

	var results []map[string]interface{}
	var err error

	queryString := r.URL.Query()
	compCd := queryString.Get("comp-cd")
	systemFlag := queryString.Get("sys-flag")
	userId := queryString.Get("user")
	rowsCount := queryString.Get("count")

	if compCd == "" || userId == "" || systemFlag == "" || flag == "" {
		err = errors.New("invalid json provided")
		return results, err
	}

	query := fmt.Sprintf(`
	BEGIN
		SMS_PK_9010.P_FIND_BOARD_TOP(  
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
		flag,
		rowsCount,
	)

	fmt.Println(query)

	queryResults, queryErr := a.db.GetSPDataWithCursor(query)
	if queryErr != nil {
		err = queryErr
		return results, err
	}

	if queryResults == nil {
		queryResults = []map[string]interface{}{}
	}

	results = queryResults
	return results, err

}
