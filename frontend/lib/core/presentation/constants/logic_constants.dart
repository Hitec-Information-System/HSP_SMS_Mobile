/// 시스템 전반 로직에 사용되는 상수
class LogicConstants {
  const LogicConstants._();

  static const String versionNo =
      "0.1.11"; // 0.1.11 last updated: 2021-12-30 14:50

  // REF: 각각의 url은 해당 repository의 backend(Go Lang.) 과 팀원이 제작한 웹페이지(Blazor)의 url을 대입해야함
  static const String baseApiUrl = "your-server-url";
  static const String baseWebUrl = "your-web-url";

  // REF: 로그인 시 api key와 함께 company code 를 넣어줘야 하는데, company code가 빈값 일 수 밖에 없어서 넣어줬음
  //      추후 서비스 확장이 되면(=다른 계열사도 사용하면) 값을 입력할 수 있게 한다고 하니 그때 hard-coded 된 이 값을 대체해주면 됨
  static const String compCd = "3000";
  // REF: procedure call을 할 때 log를 남기기 위해서 받는 파라미터임
  //      모바일 앱에서는 remote data source와 통신할 때 이외에는 쓰이지 않음
  static const String systemFlag = "MOBILE";

  static String webViewBaseUrl = "$baseWebUrl/HSP_SMS";
  static String apkDownloadBaseUrl = "$baseApiUrl/apk";

  /// REF : 한번에 첨부할 수 있는 이미지 수량
  static const int maxImageCount = 10;
}
