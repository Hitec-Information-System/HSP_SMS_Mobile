package main

import (
	"fmt"
	"log"
	"net/http"

	"hitecis.co.kr/hwashin_nfc/core"
	"hitecis.co.kr/hwashin_nfc/handler"
)

const PORT = 3000

func main() {

	// will be deprecated
	config := core.LoadDbConfig()

	dbConn := fmt.Sprintf(`%s/%s@%s:%s/%s`, config.User, config.Password, config.Host, config.Port, config.Table)

	m := handler.MakeHandler(dbConn)
	defer m.Close()

	log.Println("Started App")
	err := http.ListenAndServe(fmt.Sprintf(":%v", PORT), m)
	if err != nil {
		panic(err)
	}
}
