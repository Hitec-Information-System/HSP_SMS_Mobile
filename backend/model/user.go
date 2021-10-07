package model

type User struct {
	Id         string `json:"user-id"`
	Password   string `json:"pwd"`
	CompanyCd  string `json:"comp-cd"`
	SystemFlag string `json:"sys-flag"`
}
