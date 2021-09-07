package model

type User struct {
	Id         string `json:"userId"`
	Password   string `json:"pwd"`
	CompanyCd  string `json:"compCd"`
	SystemFlag string `json:"sysFlag"`
}
