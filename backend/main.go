package main

import (
	"fmt"
	"log"
	"net/http"

	"github.com/spf13/viper"
	"hitecis.co.kr/hwashin_nfc/core"
	"hitecis.co.kr/hwashin_nfc/handler"
)

func main() {

	core.ViperInit()

	// 포트 지정
	port := viper.GetString(`server.port`)

	m := handler.MakeHandler()
	defer m.Close()

	log.Println("Started App")
	err := http.ListenAndServe(fmt.Sprintf(":%v", port), m)
	if err != nil {
		panic(err)
	}
}
