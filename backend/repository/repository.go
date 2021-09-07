package repository

type DBRepository interface {
	GetQueryData(query string) ([]interface{}, error)
	GetSPDataWithLOC(query string) ([]map[string]interface{}, error)
	GetSPDataWithCursor(query string) ([]map[string]interface{}, error)
	GetSPDataWith2Cursor(query string) (map[string]interface{}, error)
	GetSPDataWithStringAndCursor(query string) (map[string]interface{}, error)
	Close()
}

func NewDBRepository() DBRepository {
	return NewOracleRepository()
}
