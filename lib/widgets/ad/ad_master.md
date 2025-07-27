# AdMaster - AdMob 광고 관리 라이브러리

AdMaster는 Flutter에서 AdMob 광고를 쉽고 효율적으로 관리할 수 있는 라이브러리입니다. 재사용성과 확장성을 고려하여 설계되었습니다.

## 📋 목차

- [기능](#-기능)
- [설치](#-설치)
- [초기 설정](#-초기-설정)
- [기본 사용법](#-기본-사용법)
- [고급 사용법](#-고급-사용법)
- [광고 타입별 사용법](#-광고-타입별-사용법)
- [에러 처리](#-에러-처리)
- [위젯 사용법](#-위젯-사용법)
- [설정 옵션](#-설정-옵션)
- [모범 사례](#-모범-사례)

## ✨ 기능

- 🎯 **다양한 광고 타입 지원**: Banner, Interstitial, Rewarded, Native, AppOpen
- 🔧 **유연한 설정**: 테스트/프로덕션 모드 자동 전환
- 📊 **상태 관리**: 광고 로딩 상태 실시간 추적
- 🛡️ **에러 처리**: 체계적인 에러 처리 및 로깅
- 🎨 **위젯 지원**: Flutter 위젯으로 쉬운 UI 통합
- 🔄 **재사용성**: 다양한 프로젝트에서 재사용 가능

## 📦 설치

### 1. 의존성 추가

```yaml
dependencies:
  google_mobile_ads: ^4.0.0
```

### 2. Android 설정

`android/app/src/main/AndroidManifest.xml`에 추가:

```xml
<manifest>
    <application>
        <meta-data
            android:name="com.google.android.gms.ads.APPLICATION_ID"
            android:value="ca-app-pub-xxxxxxxxxxxxxxxx~yyyyyyyyyy"/>
    </application>
</manifest>
```

### 3. iOS 설정

`ios/Runner/Info.plist`에 추가:

```xml
<key>GADApplicationIdentifier</key>
<string>ca-app-pub-xxxxxxxxxxxxxxxx~yyyyyyyyyy</string>
<key>SKAdNetworkItems</key>
<array>
    <dict>
        <key>SKAdNetworkIdentifier</key>
        <string>cstr6suwn9.skadnetwork</string>
    </dict>
</array>
```

## 🚀 초기 설정

### 1. 기본 초기화

```dart
import 'package:flutter/material.dart';
import 'package:your_app/widgets/ad/ad_master.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // AdMaster 초기화
  final adMaster = AdMaster();
  await adMaster.initialize(AdConfig(
    isTestMode: kDebugMode, // 디버그 모드에서는 테스트 광고
    testDeviceIds: ['YOUR_TEST_DEVICE_ID'],
  ));

  runApp(MyApp());
}
```

### 2. 광고 ID 설정

```dart
// 테스트 광고 ID (기본 제공)
final testConfig = AdConfig(
  isTestMode: true,
  testAdUnitIds: {
    'android': {
      'banner': 'ca-app-pub-3940256099942544/6300978111',
      'interstitial': 'ca-app-pub-3940256099942544/1033173712',
      'rewarded': 'ca-app-pub-3940256099942544/5224354917',
    },
    'ios': {
      'banner': 'ca-app-pub-3940256099942544/2934735716',
      'interstitial': 'ca-app-pub-3940256099942544/4411468910',
      'rewarded': 'ca-app-pub-3940256099942544/1712485313',
    },
  },
);

// 실제 광고 ID 설정
final productionConfig = AdConfig(
  isTestMode: false,
  realAdUnitIds: {
    'android': {
      'banner': 'ca-app-pub-123456789/987654321',
      'interstitial': 'ca-app-pub-123456789/111111111',
      'rewarded': 'ca-app-pub-123456789/222222222',
    },
    'ios': {
      'banner': 'ca-app-pub-123456789/333333333',
      'interstitial': 'ca-app-pub-123456789/444444444',
      'rewarded': 'ca-app-pub-123456789/555555555',
    },
  },
);
```

## 📖 기본 사용법

### 1. 배너 광고

```dart
class BannerAdExample extends StatefulWidget {
  @override
  _BannerAdExampleState createState() => _BannerAdExampleState();
}

class _BannerAdExampleState extends State<BannerAdExample> {
  BannerAd? _bannerAd;

  @override
  void initState() {
    super.initState();
    _loadBannerAd();
  }

  Future<void> _loadBannerAd() async {
    try {
      final adMaster = AdMaster();
      _bannerAd = await adMaster.createBannerAd(
        size: AdSize.banner,
        callback: DefaultAdCallback(),
      );
      setState(() {});
    } catch (e) {
      print('배너 광고 로드 실패: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 앱 콘텐츠
        Expanded(
          child: Center(
            child: Text('앱 콘텐츠'),
          ),
        ),
        // 배너 광고
        if (_bannerAd != null)
          Container(
            height: _bannerAd!.size.height.toDouble(),
            width: _bannerAd!.size.width.toDouble(),
            child: AdWidget(ad: _bannerAd!),
          ),
      ],
    );
  }

  @override
  void dispose() {
    _bannerAd?.dispose();
    super.dispose();
  }
}
```

### 2. 전면 광고

```dart
class InterstitialAdExample extends StatefulWidget {
  @override
  _InterstitialAdExampleState createState() => _InterstitialAdExampleState();
}

class _InterstitialAdExampleState extends State<InterstitialAdExample> {
  InterstitialAd? _interstitialAd;

  Future<void> _loadInterstitialAd() async {
    try {
      final adMaster = AdMaster();
      _interstitialAd = await adMaster.createInterstitialAd(
        callback: DefaultAdCallback(),
      );
    } catch (e) {
      print('전면 광고 로드 실패: $e');
    }
  }

  Future<void> _showInterstitialAd() async {
    if (_interstitialAd != null) {
      await _interstitialAd!.show();
      _interstitialAd = null; // 사용 후 제거
      _loadInterstitialAd(); // 다음 광고 미리 로드
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _showInterstitialAd,
      child: Text('전면 광고 표시'),
    );
  }
}
```

## 🔧 고급 사용법

### 1. 커스텀 콜백

```dart
class CustomAdCallback implements AdCallback {
  @override
  void onAdLoaded() {
    print('광고가 성공적으로 로드되었습니다!');
    // 사용자에게 알림 표시
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('광고가 준비되었습니다')),
    );
  }

  @override
  void onAdFailedToLoad(AdError error) {
    print('광고 로드 실패: ${error.message}');
    // 에러 처리 로직
  }

  @override
  void onAdShown() {
    print('광고가 표시되었습니다');
    // 분석 이벤트 전송
  }

  @override
  void onAdClosed() {
    print('광고가 닫혔습니다');
    // 다음 광고 미리 로드
  }

  @override
  void onAdClicked() {
    print('광고가 클릭되었습니다');
  }

  @override
  void onRewardedAdUserEarnedReward(RewardItem reward) {
    print('보상 획득: ${reward.amount} ${reward.type}');
    // 보상 지급 로직
  }
}
```

### 2. 직접 광고 ID 사용

```dart
// 프로덕션 광고 ID 직접 지정
final bannerAd = await adMaster.createBannerAd(
  adUnitId: 'ca-app-pub-123456789/987654321',
  callback: CustomAdCallback(),
);

// 테스트 모드 강제 설정
final interstitialAd = await adMaster.createInterstitialAd(
  forceTestMode: true,
  callback: CustomAdCallback(),
);
```

## 🎯 광고 타입별 사용법

### 1. 배너 광고 (BannerAd)

```dart
// 다양한 크기 지원
final bannerAd = await adMaster.createBannerAd(
  size: AdSize.banner, // 또는 AdSize.mediumRectangle, AdSize.leaderboard
  callback: DefaultAdCallback(),
);
```

### 2. 전면 광고 (InterstitialAd)

```dart
// 게임 레벨 완료 후 표시
Future<void> showInterstitialAfterLevelComplete() async {
  final interstitialAd = await adMaster.createInterstitialAd(
    callback: DefaultAdCallback(),
  );

  if (interstitialAd != null) {
    await interstitialAd.show();
  }
}
```

### 3. 보상형 광고 (RewardedAd)

```dart
// 보상형 광고 표시
Future<void> showRewardedAd() async {
  final rewardedAd = await adMaster.createRewardedAd(
    callback: CustomAdCallback(),
  );

  if (rewardedAd != null) {
    await rewardedAd.show();
  }
}
```

### 4. 네이티브 광고 (NativeAd)

```dart
// 네이티브 광고 로드
final nativeAd = await adMaster.createNativeAd(
  callback: DefaultAdCallback(),
);
```

### 5. 앱 오픈 광고 (AppOpenAd)

```dart
// 앱 시작 시 표시
Future<void> showAppOpenAd() async {
  final appOpenAd = await adMaster.createAppOpenAd(
    callback: DefaultAdCallback(),
  );

  if (appOpenAd != null) {
    await appOpenAd.show();
  }
}
```

## 🛡️ 에러 처리

### 1. 에러 타입

```dart
enum AdErrorType {
  notInitialized,    // 초기화되지 않음
  invalidAdUnitId,   // 잘못된 광고 ID
  networkError,      // 네트워크 에러
  loadTimeout,       // 로드 타임아웃
  loadFailed,        // 로드 실패
  showFailed,        // 표시 실패
  unknown,           // 알 수 없는 에러
}
```

### 2. 에러 처리 예제

```dart
try {
  final bannerAd = await adMaster.createBannerAd(
    callback: DefaultAdCallback(),
  );
} on AdError catch (error) {
  switch (error.type) {
    case AdErrorType.notInitialized:
      print('AdMaster가 초기화되지 않았습니다');
      break;
    case AdErrorType.invalidAdUnitId:
      print('잘못된 광고 ID: ${error.message}');
      break;
    case AdErrorType.loadFailed:
      print('광고 로드 실패: ${error.message}');
      break;
    default:
      print('알 수 없는 에러: ${error.message}');
  }
}
```

## 🎨 위젯 사용법

### 1. 가장 간단한 사용법 (adType + builder만 사용)

```dart
// 기본 사용법 - 광고 타입과 builder만 지정
AdWidget(
  adType: AdType.banner,
  builder: (adState) {
    // adState를 기반으로 UI 구성
    return Container(
      height: 50,
      child: adState.isLoaded
        ? AdWidget(ad: _ad) // 로드된 광고 표시
        : adState.isLoading
          ? CircularProgressIndicator() // 로딩 중
          : Text('광고를 불러올 수 없습니다'), // 에러 상태
    );
  },
)

// 더 간단한 표현
AdWidget(
  adType: AdType.banner,
  builder: (adState) => adState.isLoaded
    ? Container(height: 50, child: AdWidget(ad: _ad))
    : Container(height: 50, child: Center(child: Text('광고 로딩 중...'))),
)

// 전면 광고 예제
AdWidget(
  adType: AdType.interstitial,
  builder: (adState) => ElevatedButton(
    onPressed: adState.isLoaded ? () => _showInterstitial() : null,
    child: Text(adState.isLoaded ? '전면 광고 표시' : '광고 로딩 중...'),
  ),
)
```

### 2. 광고 타입별 간단한 사용법

```dart
// 배너 광고
AdWidget(
  adType: AdType.banner,
  builder: (adState) => Container(
    height: 50,
    child: adState.isLoaded
      ? AdWidget(ad: _ad)
      : Center(child: CircularProgressIndicator()),
  ),
)

// 보상형 광고
AdWidget(
  adType: AdType.rewarded,
  builder: (adState) => ElevatedButton(
    onPressed: adState.isLoaded ? _showRewardedAd : null,
    child: Text(adState.isLoaded ? '보상형 광고 보기' : '광고 준비 중...'),
  ),
)

// 네이티브 광고
AdWidget(
  adType: AdType.native,
  builder: (adState) => Container(
    height: 100,
    child: adState.isLoaded
      ? AdWidget(ad: _ad)
      : Container(
          decoration: BoxDecoration(color: Colors.grey[300]),
          child: Center(child: Text('광고 로딩 중...')),
        ),
      ),
  ),
)
```

### 3. 기본 위젯 사용 (전체 옵션)

```dart
AdWidget(
  adType: AdType.banner,
  builder: (adState) {
    if (adState.isLoaded) {
      return Container(
        height: 50,
        child: AdWidget(ad: bannerAd),
      );
    } else if (adState.isLoading) {
      return CircularProgressIndicator();
    } else {
      return Text('광고 로드 실패');
    }
  },
)
```

### 4. 커스텀 로딩/에러 위젯

```dart
AdWidget(
  adType: AdType.banner,
  loadingWidget: Container(
    height: 50,
    child: Center(child: CircularProgressIndicator()),
  ),
  errorWidget: Container(
    height: 50,
    child: Center(child: Text('광고를 불러올 수 없습니다')),
  ),
  builder: (adState) {
    return Container(
      height: 50,
      child: AdWidget(ad: bannerAd),
    );
  },
)
```

### 5. 간단한 사용법 요약

```dart
// 가장 간단한 사용법 - adType과 builder만 지정
AdWidget(
  adType: AdType.banner,           // 광고 타입
  builder: (adState) => Widget,    // 상태에 따른 UI
)

// 필수 매개변수
// - adType: 광고 타입 (AdType.banner, AdType.interstitial 등)
// - builder: AdState를 받아서 Widget을 반환하는 함수

// 선택적 매개변수
// - adUnitId: 직접 광고 ID 지정
// - forceTestMode: 테스트 모드 강제 설정
// - loadingWidget: 커스텀 로딩 위젯
// - errorWidget: 커스텀 에러 위젯
// - callback: 광고 이벤트 콜백
```

### 6. 실제 사용 예제

```dart
// 홈 화면 하단 배너 광고
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // 앱 콘텐츠
          Expanded(
            child: Center(child: Text('앱 콘텐츠')),
          ),
          // 하단 배너 광고
          AdWidget(
            adType: AdType.banner,
            builder: (adState) => Container(
              height: 50,
              child: adState.isLoaded
                ? AdWidget(ad: _ad)
                : Center(child: Text('광고 로딩 중...')),
            ),
          ),
        ],
      ),
    );
  }
}

// 게임 화면에서 보상형 광고 버튼
class GameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AdWidget(
          adType: AdType.rewarded,
          builder: (adState) => ElevatedButton(
            onPressed: adState.isLoaded ? _showRewardedAd : null,
            child: Text(adState.isLoaded ? '보상형 광고 보기' : '광고 준비 중...'),
          ),
        ),
      ),
    );
  }
}

// 리스트 화면에서 네이티브 광고
class ListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        if (index == 5) { // 5번째 아이템에 광고 삽입
          return AdWidget(
            adType: AdType.native,
            builder: (adState) => Container(
              height: 100,
              child: adState.isLoaded
                ? AdWidget(ad: _ad)
                : Container(
                    decoration: BoxDecoration(color: Colors.grey[300]),
                    child: Center(child: Text('광고 로딩 중...')),
                  ),
            ),
          );
        }
        return ListTile(title: Text('아이템 $index'));
      },
    );
  }
}
```

### 3. 직접 광고 ID 지정

```dart
AdWidget(
  adType: AdType.banner,
  adUnitId: 'ca-app-pub-123456789/987654321',
  forceTestMode: false, // 프로덕션 모드
  builder: (adState) {
    // 광고 위젯 구현
  },
)
```

## ⚙️ 설정 옵션

### 1. AdConfig 옵션

```dart
final config = AdConfig(
  isTestMode: kDebugMode,           // 테스트 모드 여부
  testDeviceIds: ['DEVICE_ID'],     // 테스트 기기 ID 목록
  loadTimeout: Duration(seconds: 30), // 로드 타임아웃
  maxRetryAttempts: 3,              // 최대 재시도 횟수
  testAdUnitIds: {                  // 테스트 광고 ID
    'android': {'banner': 'test_id'},
    'ios': {'banner': 'test_id'},
  },
  realAdUnitIds: {                  // 실제 광고 ID
    'android': {'banner': 'real_id'},
    'ios': {'banner': 'real_id'},
  },
);
```

### 2. 광고 상태 모니터링

```dart
final adMaster = AdMaster();

// 특정 광고 상태 확인
AdState? adState = adMaster.getAdState('banner_123456789');

// 모든 광고 상태 확인
Map<String, AdState> allStates = adMaster.getAllAdStates();

// 로드된 광고 개수
int loadedCount = adMaster.loadedAdCount;
```

## 📋 모범 사례

### 1. 앱 초기화

```dart
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FutureBuilder(
        future: _initializeAds(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return SplashScreen();
          }
          return HomeScreen();
        },
      ),
    );
  }

  Future<void> _initializeAds() async {
    final adMaster = AdMaster();
    await adMaster.initialize(AdConfig(
      isTestMode: kDebugMode,
      testDeviceIds: ['YOUR_TEST_DEVICE_ID'],
    ));
  }
}
```

### 2. 광고 생명주기 관리

```dart
class AdManager {
  static final AdManager _instance = AdManager._internal();
  factory AdManager() => _instance;
  AdManager._internal();

  InterstitialAd? _interstitialAd;
  RewardedAd? _rewardedAd;

  Future<void> preloadInterstitial() async {
    final adMaster = AdMaster();
    _interstitialAd = await adMaster.createInterstitialAd(
      callback: DefaultAdCallback(),
    );
  }

  Future<void> showInterstitial() async {
    if (_interstitialAd != null) {
      await _interstitialAd!.show();
      _interstitialAd = null;
      // 다음 광고 미리 로드
      preloadInterstitial();
    }
  }

  void dispose() {
    _interstitialAd?.dispose();
    _rewardedAd?.dispose();
  }
}
```

### 3. 에러 복구

```dart
class ResilientAdLoader {
  static Future<BannerAd?> loadBannerWithRetry({
    int maxRetries = 3,
    Duration delay = Duration(seconds: 2),
  }) async {
    for (int i = 0; i < maxRetries; i++) {
      try {
        final adMaster = AdMaster();
        return await adMaster.createBannerAd(
          callback: DefaultAdCallback(),
        );
      } catch (e) {
        if (i == maxRetries - 1) rethrow;
        await Future.delayed(delay);
      }
    }
    return null;
  }
}
```

## 🔍 디버깅

### 1. 로그 확인

```dart
// AdMaster는 자동으로 디버그 로그를 출력합니다
// 예: "AdMaster: 초기화 성공", "배너 광고가 로드되었습니다"
```

### 2. 상태 확인

```dart
final adMaster = AdMaster();

// 초기화 상태 확인
if (adMaster.isInitialized) {
  print('AdMaster가 초기화되었습니다');
}

// 설정 확인
print('현재 테스트 모드: ${adMaster.config.isTestMode}');
```

## 📝 주의사항

1. **메모리 관리**: 광고 객체는 사용 후 반드시 dispose() 호출
2. **네트워크 상태**: 인터넷 연결 상태 확인 후 광고 로드
3. **사용자 경험**: 광고 로드 실패 시 적절한 대체 UI 제공
4. **정책 준수**: AdMob 정책을 준수하여 광고 배치
5. **테스트**: 실제 기기에서 광고 테스트 수행

## 🤝 기여

버그 리포트나 기능 제안은 이슈를 통해 제출해주세요.

## 📄 라이선스

이 프로젝트는 MIT 라이선스 하에 배포됩니다.

### 7. AdMasterWidget 올바른 사용법

```dart
// ❌ 잘못된 사용법
AdMasterWidget(
  adType: AdType.banner,
  builder: (state, ad) {
    return Container(
      height: 50,
      color: Colors.red,
      child: ad.build(), // ❌ 이렇게 하면 안됨
    );
  },
)

// ✅ 올바른 사용법 - 방법 1: Ad 객체를 직접 사용
AdMasterWidget(
  adType: AdType.banner,
  builder: (state, ad) {
    if (state.isLoaded && ad != null) {
      return Container(
        height: 50,
        child: ad, // ✅ Ad 객체를 직접 사용
      );
    } else if (state.isLoading) {
      return Container(
        height: 50,
        color: Colors.grey[300],
        child: Center(child: CircularProgressIndicator()),
      );
    } else {
      return Container(
        height: 50,
        color: Colors.grey[300],
        child: Center(child: Text('광고를 불러올 수 없습니다')),
      );
    }
  },
)

// ✅ 올바른 사용법 - 방법 2: 더 간단하게
AdMasterWidget(
  adType: AdType.banner,
  builder: (state, ad) => Container(
    height: 50,
    child: state.isLoaded && ad != null
      ? ad  // ✅ Ad 객체를 직접 사용
      : Center(child: Text('광고 로딩 중...')),
  ),
)

// ✅ 올바른 사용법 - 방법 3: 가장 간단하게
AdMasterWidget(
  adType: AdType.banner,
  builder: (state, ad) => state.isLoaded && ad != null
    ? ad  // ✅ Ad 객체를 직접 사용
    : Container(
        height: 50,
        color: Colors.grey[300],
        child: Center(child: Text('광고 로딩 중...')),
      ),
)
```

// ✅ 더 간단한 사용법
AdWidget(
adType: AdType.banner,
builder: (state, ad) => Container(
height: 50,
child: state.isLoaded && ad != null
? AdWidget(ad: ad)
: Center(child: Text('광고 로딩 중...')),
),
)

````

### 8. 실제 예제 코드 수정

```dart
return Scaffold(
  backgroundColor: Colors.grey[50],
  body: SafeArea(
    child: CustomScrollView(
      slivers: [
        // 상단 앱바
        SliverAppBar(
          expandedHeight: 20,
          floating: false,
          pinned: true,
          backgroundColor: Colors.green[600],
          actions: [
            IconButton(
              icon: Icon(Icons.notifications, color: Colors.white),
              onPressed: () {
                // 알림 화면으로 이동
              },
            ),
            IconButton(
              icon: Icon(Icons.person, color: Colors.white),
              onPressed: () {
                // 프로필 화면으로 이동
              },
            ),
          ],
        ),
        // 배너 광고
        SliverToBoxAdapter(
          child: AdMasterWidget(
            adType: AdType.banner,
            builder: (state, ad) {
              if (state.isLoaded && ad != null) {
                return Container(
                  height: 50,
                  child: ad, // ✅ Ad 객체를 직접 사용
                );
              } else if (state.isLoading) {
                return Container(
                  height: 50,
                  color: Colors.grey[300],
                  child: Center(child: CircularProgressIndicator()),
                );
              } else {
                return Container(
                  height: 50,
                  color: Colors.grey[300],
                  child: Center(child: Text('광고를 불러올 수 없습니다')),
                );
              }
            },
          ),
        ),
        // 나머지 콘텐츠
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) => ListTile(
              title: Text('아이템 $index'),
            ),
            childCount: 20,
          ),
        ),
      ],
    ),
  ),
);
````

### 9. AdMasterWidget 사용 시 주의사항

1. **ad.build() 사용 금지**: `ad.build()`는 존재하지 않는 메서드입니다.
2. **Ad 객체 직접 사용**: 로드된 광고를 표시하려면 `ad` 객체를 직접 사용하세요.
3. **상태 확인 필수**: `state.isLoaded`와 `ad != null`을 모두 확인해야 합니다.
4. **에러 처리**: 광고 로드 실패 시 적절한 대체 UI를 제공하세요.
5. **로딩 상태**: 광고 로딩 중에는 로딩 인디케이터를 표시하세요.
