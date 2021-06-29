package repository

type DBRepository interface {
	GetData() ([]interface{}, error)
	Close()
}

func NewDBRepository(dbConn string) DBRepository {
	return NewOracleRepository(dbConn)
}
