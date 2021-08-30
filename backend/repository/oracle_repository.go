// package 기능이름
package repository

import (
	"context"
	"database/sql"
	"encoding/json"
	"fmt"
	"time"

	"github.com/godror/godror"
	"github.com/spf13/viper"
	"hitecis.co.kr/hwashin_nfc/model"
)

type OracleRepository struct {
	db *sql.DB
}

func (o *OracleRepository) Close() {
	o.db.Close()
}

func (o *OracleRepository) GetUser(id string, pwd string) (model.User, error) {
	var user model.User
	var err error

	query := fmt.Sprintf(`
 		SELECT COMP_CD, USER_ID, USER_NM 
			FROM SMS_B_USER	
 		WHERE USER_ID = '%s'
 		AND PWD = '%s'
		AND USE_YN = 'Y'
 `, id, pwd)

	rows, err := o.db.Query(query)

	if err != nil {
		return user, err
	}

	defer rows.Close()

	for rows.Next() {
		if err := rows.Scan(&user.CompCd, &user.Id, &user.Name); err != nil {
			return user, err
		}
	}

	return user, err
}

func (o *OracleRepository) GetQueryData(query string) ([]interface{}, error) {

	var results []interface{}
	var err error

	rows, err := o.db.Query(query)

	fmt.Println(rows)

	if err != nil {
		return results, err
	}

	defer rows.Close()

	cols, _ := rows.Columns()

	for rows.Next() {
		// Create a slice of interface{}'s to represent each column,
		// and a second slice to contain pointers to each item in the columns slice.
		columns := make([]interface{}, len(cols))
		columnPointers := make([]interface{}, len(cols))
		for i := range columns {
			columnPointers[i] = &columns[i]
		}
		// Scan the result into the column pointers...
		if err = rows.Scan(columnPointers...); err != nil {
			return results, err
		}

		// Create our map, and retrieve the value for each column from the pointers slice,
		// storing it in the map with the name of the column as the key.
		m := make(map[string]interface{})
		for i, colName := range cols {
			val := columnPointers[i].(*interface{})
			m[colName] = *val
		}

		// Outputs: map[columnName:value columnName2:value2 columnName3:value3 ...]
		// fmt.Print(m)
		results = append(results, m)

	}

	return results, err

}

func (o *OracleRepository) GetSPDataWithLOC(qry string) ([]map[string]interface{}, error) {

	var results []map[string]interface{}
	var err error

	ctx, cancel := context.WithTimeout(godror.ContextWithTraceTag(context.Background(), godror.TraceTag{Module: "plsql_with_loc"}), 10*time.Second)
	defer cancel()

	conn, err := o.db.Conn(ctx)
	if err != nil {
		return results, err
	}

	defer conn.Close()

	stmt, err := conn.PrepareContext(ctx, qry)
	if err != nil {
		return results, err
	}
	defer stmt.Close()

	var lob godror.Lob = godror.Lob{IsClob: true}

	_, err = stmt.ExecContext(ctx, sql.Out{Dest: &lob, In: false})

	if err != nil {
		return results, err
	}

	if err := json.NewDecoder(lob.Reader).Decode(&results); err != nil {
		return results, err
	}

	return results, err

}

func NewOracleRepository() DBRepository {

	database, err := sql.Open("godror", getDbConnString())
	if err != nil {
		panic(err)
	}

	return &OracleRepository{db: database}
}

func getDbConnString() (dbConnString string) {
	dbHost := viper.GetString(`database.host`)
	dbUser := viper.GetString(`database.user`)
	dbPort := viper.GetString(`database.port`)
	dbPass := viper.GetString(`database.pass`)
	dbName := viper.GetString(`database.name`)

	dbConnString = fmt.Sprintf(`user="%s" password="%s" connectString="%s:%s/%s" interpolateParams=true`, dbUser, dbPass, dbHost, dbPort, dbName)
	return
}
