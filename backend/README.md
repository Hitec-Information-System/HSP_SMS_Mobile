# 화신정공 안전관리 앱서버

화신정공 안전관리 모바일 애플리케이션과 통신하는 앱서버

## Table of content

- [Prerequisite](#prerequisite)
- [Environment](#environment)
- [Architecture](#architecture)
- [Command](#command)
    - [Run](#run)
    - [Build](#build)
- [Issues](#issues)

## Prerequisite
Go: 1.17.4  
config.json (운영환경에 환경변수를 추가할 수 없어 대신 사용하고 있음)  

## Environment
OS: Windows Server 2008 R2 Standard(VMWare)
Core: 3

## Architecture

```
📦backend
 ┣ 📂.vscode : REST API 응답 확인 파일
 ┣ 📂core : configuration 관련
 ┣ 📂handler : endpoint 처리 메소드
 ┣ 📂model : entity 모음
 ┣ 📂repository : Database 통신
 ┣ 📂web : 정적 페이지 관련
 ┃ ┣ 📂assets
 ┃ ┣ 📂canvaskit
 ┃ ┣ 📂icons
 ┃ ┣ 📜index.html
 ┃ ┣ 📜main.go : frontend entry point
 ┣ 📜config.json : 환경 설정 파일
 ┣ 📜go.mod : 패키지 관련
 ┣ 📜go.sum : 패키지 관련
 ┗ 📜main.go : entry point
```

## Command

### Run

#### Without Hot Reload
```bash
go run main.go
```

#### With Hot Reload
[air package](https://github.com/cosmtrek/air) 다운로드  
```bash
air
```

### Build
```bash
go build main.go
```

**Note**: 혹시나 다른 OS(Linux,MacOS 등)에서 .exe 파일을 빌드하려고 할 때는 [다음 링크](https://brownbears.tistory.com/68)를 참조  


## Issues
flutter web을 다른 폴더로 구성하니 web 관련 파일들이 경로를 제대로 찾지 못하는 일이 발생함  
임시 해결책   
    - web directory 안에서 서버를 따로 구성하여 9120 포트 할당([참고](./web/main.go))
