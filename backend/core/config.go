package core

import (
	"encoding/json"
	"io/ioutil"
)

type dbConfig struct {
	Host     string `json:"host"`
	Port     string `json:"port"`
	User     string `json:"user"`
	Password string `json:"pwd"`
	Table    string `json:"table"`
}

// DB 연결
// 	- will be deprecated
func LoadDbConfig() dbConfig {
	var config dbConfig

	data, err := ioutil.ReadFile("./config/db_config.json")
	if err != nil {
		panic(err)
	}
	json.Unmarshal(data, &config)

	return config
}
