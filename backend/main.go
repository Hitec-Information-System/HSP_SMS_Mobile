package main

import (
	"fmt"
	"log"
	"net/http"
	"runtime"

	"github.com/gorilla/handlers"
	"github.com/spf13/viper"
	"hitecis.co.kr/hwashin_nfc/core"
	"hitecis.co.kr/hwashin_nfc/handler"
)

func main() {

	core.ViperInit()

	// 포트 지정
	port := viper.GetString(`server.port`)

	// 코어 설정
	runtime.GOMAXPROCS(runtime.NumCPU())

	// 코어 설정 확인
	fmt.Println("core count", runtime.GOMAXPROCS(0))

	m := handler.MakeHandler()
	defer m.Close()

	// Settings for Cross Origin Resource Sharing
	header := handlers.AllowedHeaders([]string{"X-Requested-With", "Content-Type", "Authorization"})
	methods := handlers.AllowedMethods([]string{"GET", "POST", "PUT", "HEAD", "OPTIONS"})
	origins := handlers.AllowedOrigins([]string{"*"})

	log.Println(".Started App")
	err := http.ListenAndServe(fmt.Sprintf(":%v", port), handlers.CORS(header, methods, origins)(m))
	if err != nil {
		panic(err)
	}
}
