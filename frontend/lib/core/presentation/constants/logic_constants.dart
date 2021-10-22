/// 시스템 전반 로직에 사용되는 상수
class LogicConstants {
  const LogicConstants._();

  static const systemFlag = "MOBILE";
  static const versionNo = "0.1.3"; // 0.1.2 last updated: 2021-10-22 17:00
  static const baseApiUrl = "http://192.168.0.117:9110";
  // static const baseApiUrl = "http://ss.hitecis.co.kr:9110";
  // TODO: api key와 함께 company code 를 return 받기 전까지는 빈값일 수 밖에 없어서 임의로 설정함
  static const compCd = "3000";
}
