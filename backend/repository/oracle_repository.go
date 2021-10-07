package repository

import (
	"context"
	"database/sql"
	"database/sql/driver"
	"encoding/json"
	"fmt"
	"io"
	"time"

	"github.com/godror/godror"
	"github.com/spf13/viper"
)

type OracleRepository struct {
	db *sql.DB
}

func (o *OracleRepository) Close() {
	o.db.Close()
}

func (o *OracleRepository) GetSPDataWith2StringsAndCursor(qry string) (map[string]interface{}, error) {
	var err error

	var rset driver.Rows
	var rstr1, rstr2 string

	results := make(map[string]interface{})

	ctx, cancel := context.WithTimeout(godror.ContextWithTraceTag(context.Background(), godror.TraceTag{Module: "plsql_with_cursor"}), 10*time.Second)
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

	_, err = stmt.ExecContext(ctx, sql.Out{Dest: &rstr1}, sql.Out{Dest: &rstr2}, sql.Out{Dest: &rset, In: false})

	if err != nil {
		return results, err
	}

	columns := rset.(driver.RowsColumnTypeScanType).Columns()

	count := len(columns)
	dsets := make([]driver.Value, count)
	var cursorResults []map[string]interface{}
	for {
		if err := rset.Next(dsets); err != nil {
			if err == io.EOF {
				break
			}
			rset.Close()
			return results, err
		}
		dMap := make(map[string]interface{})
		for idx, val := range dsets {
			dMap[columns[idx]] = val
		}

		cursorResults = append(cursorResults, dMap)
	}

	results["res_str1"] = rstr1
	results["res_str2"] = rstr2
	results["res_cur"] = cursorResults

	return results, err
}

func (o *OracleRepository) GetSPDataWithString(qry string) (string, error) {
	var err error

	var results string

	ctx, cancel := context.WithTimeout(godror.ContextWithTraceTag(context.Background(), godror.TraceTag{Module: "plsql_with_cursor"}), 10*time.Second)
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

	_, err = stmt.ExecContext(ctx, sql.Out{Dest: &results, In: false})

	if err != nil {
		return results, err
	}

	return results, err
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

func (o *OracleRepository) GetSPDataWithLOB(qry string) ([]map[string]interface{}, error) {

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

func (o *OracleRepository) GetSPDataWithCursor(qry string) ([]map[string]interface{}, error) {

	var results []map[string]interface{}
	var err error

	var rset driver.Rows

	ctx, cancel := context.WithTimeout(godror.ContextWithTraceTag(context.Background(), godror.TraceTag{Module: "plsql_with_cursor"}), 10*time.Second)
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

	_, err = stmt.ExecContext(ctx, sql.Out{Dest: &rset, In: false})

	if err != nil {
		return results, err
	}

	columns := rset.(driver.RowsColumnTypeScanType).Columns()

	count := len(columns)
	dsets := make([]driver.Value, count)
	for {
		if err := rset.Next(dsets); err != nil {
			if err == io.EOF {
				break
			}
			rset.Close()
			return results, err
		}
		dMap := make(map[string]interface{})
		for idx, val := range dsets {
			dMap[columns[idx]] = val
		}

		results = append(results, dMap)
	}

	return results, err

}
func (o *OracleRepository) GetSPDataWith2Cursor(qry string) (map[string]interface{}, error) {

	results := make(map[string]interface{})
	var err error

	var rset1, rset2 driver.Rows

	ctx, cancel := context.WithTimeout(godror.ContextWithTraceTag(context.Background(), godror.TraceTag{Module: "plsql_with_cursor2"}), 10*time.Second)
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

	_, err = stmt.ExecContext(ctx, sql.Out{Dest: &rset1, In: false}, sql.Out{Dest: &rset2, In: false})

	if err != nil {
		return results, err
	}

	cursors := []driver.Rows{rset1, rset2}

	for idx, cursor := range cursors {
		var cursorResults []map[string]interface{}
		columns := cursor.(driver.RowsColumnTypeScanType).Columns()

		count := len(columns)
		dsets := make([]driver.Value, count)
		for {
			if err := cursor.Next(dsets); err != nil {
				if err == io.EOF {
					break
				}
				cursor.Close()
				return results, err
			}
			dMap := make(map[string]interface{})
			for idx, val := range dsets {
				dMap[columns[idx]] = val
			}

			cursorResults = append(cursorResults, dMap)
		}

		results[fmt.Sprintf("cursor%v", idx+1)] = cursorResults

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
