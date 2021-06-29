package handler

import (
	"crypto/rand"
	"encoding/base64"
	"net/http"
	"time"
)

func signInHandler(w http.ResponseWriter, r *http.Request) {
	// state := generateSignInCookie(w)

}

// cookie 생성
func generateSignInCookie(w http.ResponseWriter) string {
	expiration := time.Now().Add(1 * 24 * time.Hour)
	b := make([]byte, 16)
	rand.Read(b)
	state := base64.URLEncoding.EncodeToString(b)
	cookie := &http.Cookie{Name: "authstate", Value: state, Expires: expiration}
	http.SetCookie(w, cookie)
	return state
}
