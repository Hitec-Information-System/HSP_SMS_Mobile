package main

import (
	"fmt"
	"log"
	"net/http"

	"github.com/go-redis/redis/v8"
	"hitecis.co.kr/hwashin_nfc/core"
	"hitecis.co.kr/hwashin_nfc/handler"
)

const PORT = 3000

var client *redis.Client

func main() {

	// will be deprecated

	core.ViperInit()
	core.RedisInit()

	m := handler.MakeHandler()
	defer m.Close()

	log.Println("Started App")
	err := http.ListenAndServe(fmt.Sprintf(":%v", PORT), m)
	if err != nil {
		panic(err)
	}
}
