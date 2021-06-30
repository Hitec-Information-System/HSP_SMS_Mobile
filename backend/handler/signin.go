package handler

import (
	"encoding/json"
	"fmt"
	"net/http"
	"os"
	"strconv"
	"strings"
	"time"

	"github.com/golang-jwt/jwt"
	"github.com/twinj/uuid"
	"hitecis.co.kr/hwashin_nfc/core"
	"hitecis.co.kr/hwashin_nfc/model"
)

var user = model.User{
	ID:       1,
	Username: "username",
	Password: "password",
	Phone:    "01012345678",
}

func signInHandler(w http.ResponseWriter, r *http.Request) {
	var u model.User

	err := json.NewDecoder(r.Body).Decode(&u)
	if err != nil {
		rd.JSON(w, http.StatusUnprocessableEntity, "Invalid json provided")
	}

	if user.Username != u.Username || user.Password != u.Password {
		rd.JSON(w, http.StatusUnauthorized, "Please, provide valid login details")
	}

	ts, err := CreateToken(user.ID)
	if err != nil {
		rd.JSON(w, http.StatusUnprocessableEntity, err.Error())
	}

	saveErr := CreateAuth(user.ID, ts)
	if saveErr != nil {
		rd.JSON(w, http.StatusUnprocessableEntity, saveErr.Error())
	}

	tokens := map[string]string{
		"access_token":  ts.AccessToken,
		"refresh_token": ts.RefreshToken,
	}

	rd.JSON(w, http.StatusOK, tokens)
}

// CreateToken
func CreateToken(userid uint64) (*model.TokenDetails, error) {

	td := &model.TokenDetails{}
	td.AtExpires = time.Now().Add(time.Minute * 15).Unix()
	td.AccessUuid = uuid.NewV4().String()

	td.RtExpires = time.Now().Add(time.Hour * 24 * 7).Unix()
	td.RefreshUuid = uuid.NewV4().String()

	var err error
	// creating access token
	os.Setenv("ACCESS_SECRET", "testAccessToken") // TODO: change secret
	atClaims := jwt.MapClaims{}
	atClaims["authorized"] = true
	atClaims["access_uuid"] = td.AccessUuid
	atClaims["user_id"] = userid
	atClaims["exp"] = td.AtExpires
	at := jwt.NewWithClaims(jwt.SigningMethodHS256, atClaims)
	td.AccessToken, err = at.SignedString([]byte(os.Getenv("ACCESS_SECRET")))
	if err != nil {
		return nil, err
	}

	os.Setenv("REFRESH_SECRET", "testRefreshToken") // TODO: change secret
	rtClaims := jwt.MapClaims{}
	rtClaims["refresh_uuid"] = td.RefreshUuid
	rtClaims["user_id"] = userid
	rtClaims["exp"] = td.RtExpires
	rt := jwt.NewWithClaims(jwt.SigningMethodHS256, rtClaims)
	td.RefreshToken, err = rt.SignedString([]byte(os.Getenv("REFRESH_SECRET")))
	if err != nil {
		return nil, err
	}

	return td, err
}

// save jwt meta data
func CreateAuth(userid uint64, td *model.TokenDetails) (err error) {

	client := core.GetClient()

	at := time.Unix(td.AtExpires, 0)
	rt := time.Unix(td.RtExpires, 0)
	now := time.Now()

	if err = client.Set(td.AccessUuid, strconv.Itoa(int(userid)), at.Sub(now)).Err(); err != nil {
		return
	}

	if err = client.Set(td.RefreshUuid, strconv.Itoa(int(userid)), rt.Sub(now)).Err(); err != nil {
		return
	}

	return nil
}

// 요청 헤더에서 토큰 가져오기
func ExtractToken(r *http.Request) string {
	bearToken := r.Header.Get("Authorization")
	// nomally Authorization the_token_xxx
	strArr := strings.Split(bearToken, " ")
	if len(strArr) == 2 {
		return strArr[1]
	}
	return ""
}

// 토큰 검증하기
func VerifyToken(r *http.Request) (*jwt.Token, error) {
	tokenString := ExtractToken(r)
	token, err := jwt.Parse(tokenString, func(token *jwt.Token) (interface{}, error) {
		//Make sure that the token method conform to "SigningMethodHMAC"
		if _, ok := token.Method.(*jwt.SigningMethodHMAC); !ok {
			return nil, fmt.Errorf("unexpected signing method: %v", token.Header["alg"])
		}
		return []byte(os.Getenv("ACCESS_SECRET")), nil
	})
	if err != nil {
		return nil, err
	}
	return token, nil
}
