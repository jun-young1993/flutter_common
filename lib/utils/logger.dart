import 'package:intl/intl.dart';
import 'package:logging/logging.dart';

void setupLogging() {
  // 계층적 로깅을 활성화합니다.
  hierarchicalLoggingEnabled = true;

  // 루트 로거의 레벨을 설정합니다.
  // Level.ALL은 모든 로그를 표시합니다. 프로덕션 환경에서는 Level.INFO 등으로 변경하는 것이 좋습니다.
  Logger.root.level = Level.ALL;

  // 로그 레코드를 콘솔에 출력하는 리스너를 설정합니다.
  Logger.root.onRecord.listen((record) {
    // 간단한 포맷터입니다. 필요에 따라 형식을 자유롭게 변경할 수 있습니다.
    final formattedMessage = '${DateFormat('HH:mm:ss.S').format(record.time)} '
        '[${record.level.name.padRight(7)}] ' // 레벨 이름의 자리를 맞춥니다.
        '${record.loggerName}: '
        '${record.message}';

    // VS Code의 '디버그 콘솔'이나 Android Studio의 '실행' 탭에 포맷된 메시지를 출력합니다.
    // ignore: avoid_print
    print(formattedMessage);

    // 오류 정보가 있으면 함께 출력합니다.
    if (record.error != null) {
      // ignore: avoid_print
      print('  ERROR: ${record.error}');
    }
    // 스택 트레이스 정보가 있으면 함께 출력합니다.
    if (record.stackTrace != null) {
      // ignore: avoid_print
      print('  STACK TRACE: ${record.stackTrace}');
    }
  });
}
