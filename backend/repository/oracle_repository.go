// package 기능이름
package repository

import (
	"database/sql"
	"fmt"

	_ "github.com/godror/godror"
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
 		SELECT USER_ID, USER_PWD
			FROM RMS_USER	
 		WHERE USER_ID = '%s'
 		AND USER_PWD = '%s'
 `, id, pwd)

	rows, err := o.db.Query(query)

	if err != nil {
		panic(err)
	}

	defer rows.Close()

	for rows.Next() {
		if err := rows.Scan(&user.ID, &user.Password); err != nil {
			return user, err
		}
	}

	return user, err
}

func (o *OracleRepository) GetData() ([]interface{}, error) {

	var results []interface{}
	var err error

	// query 예시
	rows, err := o.db.Query(`
	SELECT PROC_PART_NO, CRT_DT, CRT_BY, UDT_DT 
	FROM T_COIL_PROC_PART
	WHERE 1=1
	AND CRT_BY = '1110531'
	`)

	if err != nil {
		panic(err)
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

func NewOracleRepository() DBRepository {

	database, err := sql.Open("godror", getDbConnString())
	if err != nil {
		panic(err)
	}

	fmt.Println("DB is Connected!")

	return &OracleRepository{db: database}
}

func getDbConnString() (dbConnString string) {
	dbHost := viper.GetString(`database.host`)
	dbUser := viper.GetString(`database.user`)
	dbPort := viper.GetString(`database.port`)
	dbPass := viper.GetString(`database.pass`)
	dbName := viper.GetString(`database.name`)

	dbConnString = fmt.Sprintf(`%s/%s@%s:%s/%s`, dbUser, dbPass, dbHost, dbPort, dbName)
	return
}
