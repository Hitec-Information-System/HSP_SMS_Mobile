package main

import (
	"fmt"
	"log"
	"net/http"

	"github.com/go-redis/redis/v8"
	"github.com/spf13/viper"
	"hitecis.co.kr/hwashin_nfc/core"
	"hitecis.co.kr/hwashin_nfc/handler"
)

var client *redis.Client

func main() {

	// will be deprecated

	core.ViperInit()
	core.RedisInit()

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
