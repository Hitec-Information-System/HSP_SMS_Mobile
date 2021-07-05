package repository

type DBRepository interface {
	GetData() ([]interface{}, error)
	Close()
}

func NewDBRepository() DBRepository {
	return NewOracleRepository()
}
