/// 시스템 전반 로직에 사용되는 상수
class LogicConstants {
  const LogicConstants._();

  static const String systemFlag = "MOBILE";
  static const String versionNo =
      "0.1.10"; // 0.1.10 last updated: 2021-11-19 13:29
  // static const String baseApiUrl = "http://192.168.0.117:9110";
  static const baseApiUrl = "http://ss.hitecis.co.kr:9110";
  static const baseWebUrl = "http://ss.hitecis.co.kr:9100";
  // TODO: api key와 함께 company code 를 return 받기 전까지는 빈값일 수 밖에 없어서 임의로 설정함
  static const String compCd = "3000";

  static const String webViewBaseUrl = "$baseWebUrl/HSP_SMS";
  static const String apkDownloadBaseUrl = "$baseApiUrl/apk";

  /// REF : 한번에 첨부할 수 있는 이미지 수량
  static const int maxImageCount = 10;
}
