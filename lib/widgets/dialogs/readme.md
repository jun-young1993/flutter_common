// 기본 다이얼로그
AppDialog.show(
context: context,
title: '제목',
message: '메시지',
onConfirm: () {
// 확인 버튼 클릭 시 실행
},
);

// 성공 다이얼로그
AppDialog.showSuccess(
context: context,
title: '성공',
message: '작업이 완료되었습니다.',
);

// 에러 다이얼로그
AppDialog.showError(
context: context,
title: '오류',
message: '문제가 발생했습니다.',
);

// 경고 다이얼로그
AppDialog.showWarning(
context: context,
title: '경고',
message: '이 작업은 되돌릴 수 없습니다.',
confirmText: '진행',
cancelText: '취소',
);

# Report Dialog
```dart
ReportDialog.show(
  context: context,
  onReport: (reason, etcText) {
    // Handle report
  },
);
```