package repository

import "hitecis.co.kr/hwashin_nfc/model"

type DBRepository interface {
	GetQueryData(query string) ([]interface{}, error)
	GetSPDataWithLOC(query string) ([]map[string]interface{}, error)
	GetSPDataWith2LOC(query string) (map[string]interface{}, error)
	GetSPDataWithCursor(query string) ([]map[string]interface{}, error)
	GetUser(id string, pwd string) (model.User, error)
	Close()
}

func NewDBRepository() DBRepository {
	return NewOracleRepository()
}
