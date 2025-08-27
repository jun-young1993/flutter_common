import 'package:easy_localization/easy_localization.dart';

abstract class Tr {
  const Tr._();

  static final mcp = _Mcp();
  static final app = _App();
  static final error = _Error();
  static final message = _Message();
  static final chat = _Chat();
  static final notice = _Notice();
  static final report = _Report();
  static final ad = _Ad();
  static final loan = _Loan();
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
  final createNotice = 'message.createNotice'; // 공지사항 작성 완료
  final reportNotice = 'message.reportNotice'; // 신고 완료
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
  final description = 'notice.description'; // 내용
  final title = 'notice.title'; // 제목
  final contentDescription =
      'notice.contentDescription'; // 부적절하거나 불쾌감을 줄 수 있는 컨텐츠는 제재를 받을 수 있습니다
  final content = 'notice.content'; // 내용
  final type = 'notice.type'; // 유형
  final submit = 'notice.submit'; // 제출
  final noticeCreate = 'notice.noticeCreate'; // 공지사항 작성
  final noticeCreateTitle = 'notice.noticeCreateTitle'; // 제목
  final noticeCreateContent = 'notice.noticeCreateContent'; // 내용
  final noticeCreateType = 'notice.noticeCreateType'; // 유형
  final notice = 'notice.notice'; // 공지
  final normal = 'notice.normal'; // 일반
  final register = 'notice.register'; // 등록하기
  final createNotice = 'notice.createNotice'; // 공지사항 작성 완료
}

class _Report {
  final title = 'report.title'; // 신고
  final reason = 'report.reason'; // 신고 사유
  final comment = 'report.comment'; // 신고 내용
  final submit = 'report.submit'; // 제출
  final wrongInfo = 'report.wrongInfo'; // 잘못된 정보
  final commercialAd = 'report.commercialAd'; // 상업적 광고
  final adultContent = 'report.adultContent'; // 음란물
  final violence = 'report.violence'; // 폭력성
  final etc = 'report.etc'; // 기타
}

class _Ad {
  final title = 'ad.title'; // 광고
  final loadFailed = 'ad.loadFailed'; // 광고 로드 실패
  final loadSuccess = 'ad.loadSuccess'; // 광고 로드 성공
  final load = 'ad.load'; // 광고 로드
  final loading = 'ad.loading'; // 광고 로딩중...
}

class _Loan {
  final newAddLoan = 'loan.newAddLoan';
  final loanName = 'loan.loanName';
  final loanAmount = 'loan.loanAmount';
  final loanDate = 'loan.loanDate';
  final loanType = 'loan.loanType';
  final loanStatus = 'loan.loanStatus';
  final loanDescription = 'loan.loanDescription';
  final loanImage = 'loan.loanImage';
  final year = 'loan.year';
  final months = 'loan.months';
  final month = 'loan.month';
  final day = 'loan.day';
  final addLoan = 'loan.addLoan';
  final repaymentDate = 'loan.repaymentDate';
  final optional = 'loan.optional';
  final repaymentDateDescription = 'loan.repaymentDateDescription';
  final loanAddSuccess = 'loan.loanAddSuccess';
  final error = 'loan.error';
  final appTitle = 'loan.appTitle';
  final refreshError = 'loan.refreshError';
  final emptyLoan = 'loan.emptyLoan';
  final newLoanDescription = 'loan.newLoanDescription';
  final firstLoanAdd = 'loan.firstLoanAdd';
  final repaymentComplete = 'loan.repaymentComplete';
  final repaymentNotYet = 'loan.repaymentNotYet';
  final repaymentOverdue = 'loan.repaymentOverdue';
  final deleteLoan = 'loan.deleteLoan';
  final deleteLoanConfirmation = 'loan.deleteLoanConfirmation';
  final deleteLoanSuccess = 'loan.deleteLoanSuccess';
  final deleteLoanDescription = 'loan.deleteLoanDescription';
  final cancel = 'loan.cancel';
  final delete = 'loan.delete';
  final deletingLoan = 'loan.deletingLoan';
  final loanPeriod = 'loan.loanPeriod';
  final repaymentMethod = 'loan.repaymentMethod';
  final repaymentMethodDescription = 'loan.repaymentMethodDescription';
  final notificationSetting = 'loan.notificationSetting';
  final home = 'loan.home';
  final loanList = 'loan.loanList';
  final statistics = 'loan.statistics';
  final community = 'loan.community';
  final summaryStatistics = 'loan.summaryStatistics';
  final count = 'loan.count';
  final allLoan = 'loan.allLoan';
  final activeLoan = 'loan.activeLoan';
  final expiredLoan = 'loan.expiredLoan';
  final totalLoanAmount = 'loan.totalLoanAmount';
  final averageInterest = 'loan.averageInterest';
  final totalRepaymentAmount = 'loan.totalRepaymentAmount';
  final averageRepaymentDate = 'loan.averageRepaymentDate';
  final totalOverdueAmount = 'loan.totalOverdueAmount';
  final averageOverdueDays = 'loan.averageOverdueDays';
}
