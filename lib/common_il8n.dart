import 'package:easy_localization/easy_localization.dart';

abstract class Tr {
  const Tr._();

  static final mcp = _Mcp();
  static final app = _App();
  static final error = _Error();
  static final message = _Message();
  static final chat = _Chat();
  static final notice = _Notice();
}

class _App {
  final enable = 'app.enable';
  final disable = 'app.disable';
  final retry = 'app.retry';
  final cancel = 'app.cancel';
  final close = 'app.close';
  final print = 'app.print';
  final saveKey = 'app.saveKey';
  final clearKey = 'app.clearKey';
  final register = 'app.register';
  final detailView = 'app.detailView';
  final selectLanguage = 'app.selectLanguage';
  final settings = 'app.settings';
  final appInfo = 'app.appInfo';
  final shareApp = 'app.shareApp';
  final contact = 'app.contact';
  final emailVerification = 'app.emailVerification';
  final email = 'app.email';
  final resendAuthNumber = 'app.resendAuthNumber';
  final error = 'app.error';
  final inputAuthNumber = 'app.inputAuthNumber';
  final authEmail = 'app.authEmail';
  final community = 'app.community';
  final userInfo = 'app.userInfo';
  final contacts = 'app.contacts';
  final noUser = 'app.noUser';
}

class _Error {
  final unknownError = 'error.unknownError';
  final adNotLoaded = 'error.adNotLoaded';
  final userNotFound = 'error.userNotFound';
}

class _Message {
  final etcReasonRequired = 'message.etcReasonRequired'; // 기타 사유를 입력해주세요.
  final notFoundNotice = 'message.notFoundNotice'; // 공지사항이 없습니다.
  final lastNotice = 'message.lastNotice'; // 마지막 공지입니다.
  final printError = 'message.printError'; // 프린트 중 오류가 발생했습니다.
  final printSuccess = 'message.printSuccess'; // 프린트 완료
  final completeLinkCopy = 'message.completeLinkCopy'; // 앱 링크가 복사되었습니다.
  final storeOpenError = 'message.storeOpenError'; // 스토어를 열 수 없습니다.
  final enterReply = 'message.enterReply'; // 댓글을 입력하세요.
  final currentLanguage = 'message.currentLanguage'; // 현재 언어: {language}
  final inviteMessage =
      'message.inviteMessage'; // {appName}에 초대합니다. \n아래 QR 코드를 통해 앱을 설치해주세요.
  final contact = 'message.contact'; // 아래 이메일로 문의해주세요.
  final emailVerification =
      'message.emailVerification'; // 이메일 인증을 통해 계정을 안전하게 유지하고 복구할 수 있습니다.
  final inputEmail = 'message.inputEmail'; // 이메일
}

class _Chat {
  final title = 'chat.title'; // 채팅
  final clearChat = 'chat.clearChat'; // 채팅 지우기

  final clearChatConfirmation = 'chat.clearChatConfirmation';

  final thinking = 'chat.thinking'; // 생각중...
  final usingTool = 'chat.usingTool'; // 도구 사용중...
  final enterMessage = 'chat.enterMessage'; // 메시지 입력
  final noApiKey = 'chat.noApiKey'; // API 키가 설정되지 않았습니다.
  final goToSetting = 'chat.goToSetting'; // 설정으로 이동
  final clearChatTitle = 'chat.clearChatTitle';
  final clearChatHistoryTooltip = 'chat.clearChatHistoryTooltip';
  final goToApiKeySettings = 'chat.goToApiKeySettings';
  final sendMessageTooltip = 'chat.sendMessageTooltip';
  final apiKeyInstruction = 'chat.apiKeyInstruction';
}

class _Mcp {
  final title = 'mcp.title';
  final setting = 'mcp.setting';
  final apiKey = _ApiKey();
  final availableTools = 'mcp.availableTools';
  final availableToolsDesc = 'mcp.availableToolsDesc';
  final noToolsAvailable = 'mcp.noToolsAvailable';
  final toolListItem = 'mcp.toolListItem';
  final thinking = 'chat.thinking'; // 생각중...
}

class _ApiKey {
  final title = 'mcp.apiKey.title';
  final hint = 'mcp.apiKey.hint';
  final save = 'mcp.apiKey.save';
  final clear = 'mcp.apiKey.clear';
}

class _Notice {
  final replyCount = 'notice.replyCount'; // 댓글 {count}개
  final report = 'notice.report'; // 신고
  final noReply = 'notice.noReply'; // 아직 댓글이 없습니다.
}
