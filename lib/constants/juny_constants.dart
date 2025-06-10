enum AppKeys {
  myHomeParking,
  jaksimOneMonth,
  caughtSmoking,
}

class JunyConstants {
  static const String apiBaseUrl = 'https://juny-api.kr';
  static const String email = 'juny3738@gmail.com';
  static const Map<AppKeys, String> appKeys = {
    AppKeys.myHomeParking: 'my-home-parking',
    AppKeys.jaksimOneMonth: 'jaksim-one-month',
    AppKeys.caughtSmoking: 'caught-smoking',
  };
  static const Map<AppKeys, String> appNames = {
    AppKeys.myHomeParking: '우리집주차장',
    AppKeys.jaksimOneMonth: '작심삼일',
    AppKeys.caughtSmoking: '딱걸렸담',
  };
}
