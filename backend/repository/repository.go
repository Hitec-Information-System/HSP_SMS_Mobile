package repository

import "hitecis.co.kr/hwashin_nfc/model"

type DBRepository interface {
	GetData() ([]interface{}, error)
	GetUser(id string, pwd string) (model.User, error)
	Close()
}

func NewDBRepository() DBRepository {
	return NewOracleRepository()
}
