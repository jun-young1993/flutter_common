enum AppKeys {
  myHomeParking,
  jaksimOneMonth,
  caughtSmoking,
  mcpClient,
  moneyTree,
  loanCountdown,
  babyLog
}

class JunyConstants {
  static const String apiBaseUrl = 'https://juny-api.kr';
  static const String mcpServerUrl = 'https://juny-api.kr/sse';
  static const String junyBlogUrl = 'https://juny.blog';
  // static const String mcpServerUrl = 'http://localhost:3000/sse';
  // static const String mcpServerUrl =
  //     'https://public-mcp-demo-oai.agent-ready.ai';

  static const String email = 'juny3738@gmail.com';
  static const Map<AppKeys, String> appKeys = {
    AppKeys.myHomeParking: 'my-home-parking',
    AppKeys.jaksimOneMonth: 'jaksim-one-month',
    AppKeys.caughtSmoking: 'caught-smoking',
    AppKeys.mcpClient: 'mcp-client',
    AppKeys.moneyTree: 'money-tree',
    AppKeys.loanCountdown: 'loan-countdown',
    AppKeys.babyLog: 'baby-log'
  };
  static const Map<AppKeys, String> appNames = {
    AppKeys.myHomeParking: '우리집주차장',
    AppKeys.jaksimOneMonth: '작심삼일',
    AppKeys.caughtSmoking: '딱걸렸담',
    AppKeys.mcpClient: 'MCP Client',
    AppKeys.moneyTree: 'Money Tree',
    AppKeys.loanCountdown: 'Loan Countdown',
    AppKeys.babyLog: 'Baby Log'
  };
  static String getAppKeyStringOrThrow(AppKeys key) {
    final keyString = appKeys[key];
    if (keyString == null) {
      throw Exception('Invalid app key: $key');
    }
    return keyString;
  }
}
