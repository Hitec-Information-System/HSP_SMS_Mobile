// package 기능이름
package repository

import (
	"database/sql"
	"fmt"

	_ "github.com/godror/godror"
)

type OracleRepository struct {
	db *sql.DB
}

func (o *OracleRepository) Close() {
	o.db.Close()
}

func (o *OracleRepository) GetData() ([]interface{}, error) {

	var results []interface{}
	var err error

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

func NewOracleRepository(dbConn string) DBRepository {

	database, err := sql.Open("godror", dbConn)
	if err != nil {
		panic(err)
	}

	fmt.Println("DB is Connected!")

	return &OracleRepository{db: database}
}
