package handler

import (
	"fmt"
	"io"
	"net/http"
	"os"

	"github.com/spf13/viper"
)

const MAX_UPLOAD_IMG_SIZE = 1024 * 1024 * 5  // 5MB
const MAX_UPLOAD_APK_SIZE = 1024 * 1024 * 30 // 30MB

func imgUploadHandler(w http.ResponseWriter, r *http.Request) {
	// 32 MB is the default used by FormFile()
	if err := r.ParseMultipartForm(32 << 20); err != nil {
		rd.JSON(w, http.StatusInternalServerError, err.Error())
		return
	}

	// Get a reference to the fileHeaders.
	// They are accessible only after ParseMultipartForm is called
	files := r.MultipartForm.File["file"]

	fmt.Println(files)

	for _, fileHeader := range files {
		// Restrict the size of each uploaded file to 20MB.
		// To prevent the aggregate size from exceeding
		// a specified value, use the http.MaxBytesReader() method
		// before calling ParseMultipartForm()

		if fileHeader.Size > MAX_UPLOAD_IMG_SIZE {
			rd.JSON(w, http.StatusBadRequest, map[string]interface{}{
				"msg": fmt.Sprintf("The uploaded image is too big: %s. Please use an image less than 1MB in size", fileHeader.Filename),
			})
			return
		}

		// Open the file
		file, err := fileHeader.Open()
		if err != nil {
			rd.JSON(w, http.StatusInternalServerError, err.Error())
			return
		}

		defer file.Close()

		buff := make([]byte, 512)
		_, err = file.Read(buff)
		if err != nil {
			rd.JSON(w, http.StatusInternalServerError, err.Error())
			return
		}

		filetype := http.DetectContentType(buff)
		if filetype != "image/jpeg" && filetype != "image/png" {
			rd.JSON(w, http.StatusBadRequest, map[string]interface{}{
				"msg": "The provided file format is not allowed. Please upload a JPEG or PNG image",
			})
			return
		}

		_, err = file.Seek(0, io.SeekStart)
		if err != nil {
			rd.JSON(w, http.StatusInternalServerError, err.Error())
			return
		}

		dirName := viper.GetString(`img-path`)

		err = os.MkdirAll(dirName, os.ModePerm)
		if err != nil {
			rd.JSON(w, http.StatusInternalServerError, err.Error())
			return
		}

		fmt.Println(fileHeader.Filename)

		f, err := os.Create(fmt.Sprintf("%s/%s", dirName, fileHeader.Filename))
		if err != nil {
			rd.JSON(w, http.StatusInternalServerError, err.Error())
			return
		}

		defer f.Close()

		_, err = io.Copy(f, file)
		if err != nil {
			rd.JSON(w, http.StatusInternalServerError, err.Error())
			return
		}
	}

	rd.JSON(w, http.StatusOK, map[string]interface{}{
		"msg": "uploaded successfully",
	})
}

// TODO: 추후 업데이트 기능 적용후 하나로 합치기
func boardUploadHandler(w http.ResponseWriter, r *http.Request) {
	// 32 MB is the default used by FormFile()
	if err := r.ParseMultipartForm(32 << 20); err != nil {
		rd.JSON(w, http.StatusInternalServerError, err.Error())
		return
	}

	// Get a reference to the fileHeaders.
	// They are accessible only after ParseMultipartForm is called
	files := r.MultipartForm.File["file"]

	fmt.Println(files)

	for _, fileHeader := range files {
		// Restrict the size of each uploaded file to 20MB.
		// To prevent the aggregate size from exceeding
		// a specified value, use the http.MaxBytesReader() method
		// before calling ParseMultipartForm()

		if fileHeader.Size > MAX_UPLOAD_IMG_SIZE {
			rd.JSON(w, http.StatusBadRequest, map[string]interface{}{
				"msg": fmt.Sprintf("The uploaded image is too big: %s. Please use an image less than 1MB in size", fileHeader.Filename),
			})
			return
		}

		// Open the file
		file, err := fileHeader.Open()
		if err != nil {
			rd.JSON(w, http.StatusInternalServerError, err.Error())
			return
		}

		defer file.Close()

		buff := make([]byte, 512)
		_, err = file.Read(buff)
		if err != nil {
			rd.JSON(w, http.StatusInternalServerError, err.Error())
			return
		}

		filetype := http.DetectContentType(buff)
		if filetype != "image/jpeg" && filetype != "image/png" {
			rd.JSON(w, http.StatusBadRequest, map[string]interface{}{
				"msg": "The provided file format is not allowed. Please upload a JPEG or PNG image",
			})
			return
		}

		_, err = file.Seek(0, io.SeekStart)
		if err != nil {
			rd.JSON(w, http.StatusInternalServerError, err.Error())
			return
		}

		dirName := viper.GetString(`board-img-path`)

		err = os.MkdirAll(dirName, os.ModePerm)
		if err != nil {
			rd.JSON(w, http.StatusInternalServerError, err.Error())
			return
		}

		fmt.Println(fileHeader.Filename)

		f, err := os.Create(fmt.Sprintf("%s/%s", dirName, fileHeader.Filename))
		if err != nil {
			rd.JSON(w, http.StatusInternalServerError, err.Error())
			return
		}

		defer f.Close()

		_, err = io.Copy(f, file)
		if err != nil {
			rd.JSON(w, http.StatusInternalServerError, err.Error())
			return
		}
	}

	rd.JSON(w, http.StatusOK, map[string]interface{}{
		"msg": "uploaded successfully",
	})
}

func apkUploadHandler(r *http.Request) error {

	var nullErr error

	// 32 MB is the default used by FormFile()

	if err := r.ParseMultipartForm(32 << 20); err != nil {
		return err
	}

	appVersion := r.FormValue("app-version")

	// Get a reference to the fileHeaders.
	// They are accessible only after ParseMultipartForm is called
	fileRaw := r.MultipartForm.File["file"]

	// 파일은 오직 하나 존재함
	fileHeader := fileRaw[0]

	if fileHeader.Size > MAX_UPLOAD_APK_SIZE {
		return fmt.Errorf(fmt.Sprintf("The uploaded image is too big: %s. Please use an image less than 1MB in size", fileHeader.Filename))
	}

	// Open the file
	file, err := fileHeader.Open()
	if err != nil {
		return err
	}

	defer file.Close()

	buff := make([]byte, 512)
	_, err = file.Read(buff)
	if err != nil {
		return err
	}

	filetype := http.DetectContentType(buff)

	if filetype != "application/zip" {
		return fmt.Errorf("the provided file format is not allowed. Please upload a JPEG or PNG image")
	}

	_, err = file.Seek(0, io.SeekStart)
	if err != nil {
		return err
	}

	rootName := viper.GetString(`apk-path`)
	dirName := fmt.Sprintf("%s/%s", rootName, appVersion)

	err = os.MkdirAll(dirName, os.ModePerm)
	if err != nil {
		return err
	}

	f, err := os.Create(fmt.Sprintf("%s/%s", dirName, fileHeader.Filename))
	if err != nil {
		fmt.Println(err)
		return err
	}

	defer f.Close()

	_, err = io.Copy(f, file)
	if err != nil {
		return err
	}

	return nullErr
}
