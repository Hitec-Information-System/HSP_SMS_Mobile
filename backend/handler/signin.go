package handler

import (
	"encoding/json"
	"fmt"
	"net/http"

	"strconv"
	"strings"
	"time"

	"github.com/golang-jwt/jwt"
	"github.com/spf13/viper"
	"github.com/twinj/uuid"
	"hitecis.co.kr/hwashin_nfc/core"
	"hitecis.co.kr/hwashin_nfc/model"
)

func (a *AppHandler) getUser(w http.ResponseWriter, r *http.Request) {
	var user model.User

	var convertedResults map[string]interface{}

	if err := json.NewDecoder(r.Body).Decode(&user); err != nil {
		rd.JSON(w, http.StatusBadRequest, "Invalid json provided")
	}

	if user.Id == "" || user.Password == "" || user.CompanyCd == "" || user.SystemFlag == "" {
		rd.JSON(w, http.StatusBadRequest, map[string]interface{}{
			"msg": "invalid json provided",
		})
		return
	}

	query := fmt.Sprintf(`
	BEGIN
		SMS_PK_AUTH.LOGIN2('%s', '%s', '%s','%s',:PO_RST, :PO_APIKEY, :PO_CUR);
	END;
	`, user.CompanyCd, user.Id, user.Password, user.SystemFlag)

	fmt.Println(query)

	results, err := a.db.GetSPDataWith2StringsAndCursor(query)
	if err != nil {
		rd.JSON(w, http.StatusBadRequest, map[string]interface{}{
			"msg": err.Error(),
		})
		return
	}

	if results["res_str1"] == nil || results["res_str1"] != "OK" {
		rd.JSON(w, http.StatusOK, map[string]interface{}{
			"msg": "아이디, 비밀번호의 조합에 해당하는 계정이 없습니다.",
		})
		return
	}

	convertedResults = map[string]interface{}{}
	convertedResults["API_KEY"] = results["res_str2"]
	convertedResults["INFO"] = results["res_cur"].([]map[string]interface{})[0]

	rd.JSON(w, http.StatusOK, convertedResults)

}

// 웹에서는 company code 같은 것을 사용하여 로그인할 필요가 없기 때문에 따로 정의함
func (a *AppHandler) getWebUser(w http.ResponseWriter, r *http.Request) {

	fmt.Println("test")

	var user model.User

	w.Header().Set("Access-Control-Allow-Origin", "*")
	w.Header().Set("Access-Control-Allow-Credentials", "true")
	w.Header().Set("Access-Control-Allow-Methods", "OPTIONS, GET, POST")
	w.Header().Set("Access-Control-Allow-Headers", "Content-Type, Depth, User-Agent, X-File-Size, X-Requested-With, If-Modified-Since, X-File-Name, Cache-Control")

	if err := json.NewDecoder(r.Body).Decode(&user); err != nil {
		rd.JSON(w, http.StatusBadRequest, "Invalid json provided")
	}

	if user.Id == "" || user.Password == "" {
		rd.JSON(w, http.StatusBadRequest, map[string]interface{}{
			"msg": "invalid json provided",
		})
		return
	}

	query := fmt.Sprintf(`
	SELECT USER_ID
		FROM SMS_B_USER
	WHERE 
		USER_ID = '%s'
		AND PWD = '%s'
		AND USE_YN = 'Y'
	`, user.Id, user.Password)

	fmt.Println(query)

	results, err := a.db.GetQueryData(query)
	if err != nil {
		rd.JSON(w, http.StatusBadRequest, map[string]interface{}{
			"msg": err.Error(),
		})
		return
	}

	if len(results) == 0 {
		rd.JSON(w, http.StatusBadRequest, map[string]interface{}{
			"msg": "아이디, 비밀번호의 조합에 해당하는 계정이 없습니다.",
		})
		return
	} else {
		rd.JSON(w, http.StatusOK, map[string]interface{}{
			"msg": "OK",
		})
	}

}

func (a *AppHandler) updatePassword(w http.ResponseWriter, r *http.Request) {
	var user model.User

	var results map[string]interface{}

	if err := json.NewDecoder(r.Body).Decode(&user); err != nil {
		rd.JSON(w, http.StatusBadRequest, "Invalid json provided")
	}

	if user.Id == "" || user.Password == "" || user.CompanyCd == "" || user.SystemFlag == "" {
		rd.JSON(w, http.StatusBadRequest, map[string]interface{}{
			"msg": "invalid json provided",
		})
		return
	}

	query := fmt.Sprintf(`
	BEGIN
		SMS_PK_AUTH.P_PWD_CHG('%s', '%s', '%s', '%s', :PO_RST);
	END;
	`, user.CompanyCd, user.SystemFlag, user.Id, user.Password)

	fmt.Println(query)

	result, err := a.db.GetSPDataWithString(query)
	if err != nil {
		rd.JSON(w, http.StatusBadRequest, map[string]interface{}{
			"msg": err.Error(),
		})
		return
	}

	if result != "OK" {
		rd.JSON(w, http.StatusBadRequest, map[string]interface{}{
			"msg": "오류가 발생하였습니다",
		})
		return
	}

	results = map[string]interface{}{}
	results["msg"] = result

	rd.JSON(w, http.StatusOK, results)

}

// ---- deprecated ----
/// lines below are deprecated with the reasons of business characteristics
var ACCESS_SECRET = viper.GetString(`token.ACCESS_SECRET`)
var REFRESH_SECRET = viper.GetString(`token.REFRESH_SECRET`)

// CreateToken
func CreateToken(userid string) (*model.TokenDetails, error) {

	td := &model.TokenDetails{}
	td.AtExpires = time.Now().Add(time.Minute * 15).Unix()
	td.AccessUuid = uuid.NewV4().String()

	td.RtExpires = time.Now().Add(time.Hour * 24 * 7).Unix()
	td.RefreshUuid = uuid.NewV4().String()

	var err error
	atClaims := jwt.MapClaims{}
	atClaims["authorized"] = true
	atClaims["access_uuid"] = td.AccessUuid
	atClaims["user_id"] = userid
	atClaims["expiration"] = td.AtExpires
	at := jwt.NewWithClaims(jwt.SigningMethodHS256, atClaims)
	td.AccessToken, err = at.SignedString([]byte(ACCESS_SECRET))
	if err != nil {
		return nil, err
	}

	rtClaims := jwt.MapClaims{}
	rtClaims["refresh_uuid"] = td.RefreshUuid
	rtClaims["user_id"] = userid
	rtClaims["expiration"] = td.RtExpires
	rt := jwt.NewWithClaims(jwt.SigningMethodHS256, rtClaims)
	td.RefreshToken, err = rt.SignedString([]byte(REFRESH_SECRET))
	if err != nil {
		return nil, err
	}

	return td, err
}

// save jwt meta data
func CreateAuth(userid string, td *model.TokenDetails) (err error) {

	client := core.GetClient()

	at := time.Unix(td.AtExpires, 0) // converting Unix to UTC
	rt := time.Unix(td.RtExpires, 0)
	now := time.Now()

	if err = client.Set(td.AccessUuid, userid, at.Sub(now)).Err(); err != nil {
		return
	}

	if err = client.Set(td.RefreshUuid, userid, rt.Sub(now)).Err(); err != nil {
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
		return []byte(ACCESS_SECRET), nil
	})
	if err != nil {
		return nil, err
	}
	return token, nil
}

// 토큰 만료 검사
func TokenValid(r *http.Request) error {
	token, err := VerifyToken(r)
	if err != nil {
		return err
	}
	if _, ok := token.Claims.(jwt.Claims); !ok {
		return err
	}
	return nil
}

// redis에서 조회해야 하는 메타데이터 추출
func ExtractTokenMetadata(r *http.Request) (*model.AccessDetails, error) {
	token, err := VerifyToken(r)

	if err != nil {
		return nil, err
	}
	claims, ok := token.Claims.(jwt.MapClaims)

	if ok && token.Valid {

		accessUuid, ok := claims["access_uuid"].(string)
		if !ok {
			return nil, err
		}

		userId := fmt.Sprintf("%v", claims["user_id"])

		return &model.AccessDetails{
			AccessUuid: accessUuid,
			UserId:     userId,
		}, nil
	}
	return nil, err
}

// 토큰에 저장된 uuid를 Redis에서 찾는 로직
func FetchAuth(authD *model.AccessDetails) (uint64, error) {

	client := core.GetClient()

	userid, err := client.Get(authD.AccessUuid).Result()
	if err != nil {
		return 0, err
	}
	userID, _ := strconv.ParseUint(userid, 10, 64)
	return userID, nil
}

func DeleteAuth(givenUuid string) (int64, error) {
	client := core.GetClient()
	deleted, err := client.Del(givenUuid).Result()
	if err != nil {
		return 0, err
	}
	return deleted, nil
}

func signOutHandler(w http.ResponseWriter, r *http.Request) {

	fmt.Println("signout started!!!")

	au, err := ExtractTokenMetadata(r)

	if err != nil {
		rd.JSON(w, http.StatusUnauthorized, "unauthorized")
		return
	}

	deleted, delErr := DeleteAuth(au.AccessUuid)

	if delErr != nil || deleted == 0 {
		rd.JSON(w, http.StatusUnauthorized, "unauthorized")
		return
	}

	rd.JSON(w, http.StatusOK, "Successfully logged out")
}

func refreshHandler(w http.ResponseWriter, r *http.Request) {

	fmt.Println("refresh started!")

	mapToken := map[string]string{}
	if err := json.NewDecoder(r.Body).Decode(&mapToken); err != nil {
		rd.JSON(w, http.StatusUnprocessableEntity, err.Error())
		return
	}

	refreshToken := mapToken["refresh_token"]

	// verify token
	token, err := jwt.Parse(refreshToken, func(token *jwt.Token) (interface{}, error) {
		if _, ok := token.Method.(*jwt.SigningMethodHMAC); !ok {
			return nil, fmt.Errorf("unexpected signing method: %v", token.Header["alg"])
		}
		return []byte(REFRESH_SECRET), nil
	})

	// if there is an error, the token must have expired
	if err != nil {
		rd.JSON(w, http.StatusUnauthorized, "Refresh token expired")
		return
	}

	// is token valid?
	if _, ok := token.Claims.(jwt.Claims); !ok && !token.Valid {
		rd.JSON(w, http.StatusUnauthorized, err)
		return
	}

	// since token is valid, get the uuid
	claims, ok := token.Claims.(jwt.MapClaims) // the token claims should conform to MapClaims
	if ok && token.Valid {
		refreshUuid, ok := claims["refresh_uuid"].(string)
		if !ok {
			rd.JSON(w, http.StatusUnprocessableEntity, err)
			return
		}
		userId := fmt.Sprintf("%v", claims["user_id"])
		if err != nil {
			rd.JSON(w, http.StatusUnprocessableEntity, "Error occurred")
			return
		}

		//Delete the previous Refresh Token
		deleted, delErr := DeleteAuth(refreshUuid)
		if delErr != nil || deleted == 0 {
			rd.JSON(w, http.StatusUnauthorized, "unauthorized")
			return
		}

		// create new pairs of refresh and access token
		ts, createErr := CreateToken(userId)
		if createErr != nil {
			rd.JSON(w, http.StatusForbidden, createErr.Error())
			return
		}

		// save the tokens metadata to redis
		saveErr := CreateAuth(userId, ts)
		if saveErr != nil {
			rd.JSON(w, http.StatusForbidden, saveErr.Error())
			return
		}

		tokens := map[string]string{
			"access_token":  ts.AccessToken,
			"refresh_token": ts.RefreshToken,
		}

		rd.JSON(w, http.StatusCreated, tokens)
		return
	} else {
		rd.JSON(w, http.StatusUnauthorized, "refresh expired")
		return
	}

}
