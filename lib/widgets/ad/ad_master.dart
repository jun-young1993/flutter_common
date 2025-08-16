import 'dart:io';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

/// 광고 타입을 정의하는 열거형
enum AdType {
  banner,
  interstitial,
  rewarded,
  native,
  appOpen,
}

/// 광고 상태를 정의하는 열거형
enum AdStatus {
  initial,
  loading,
  loaded,
  failed,
  shown,
  closed,
}

/// 광고 에러 타입을 정의하는 열거형
enum AdErrorType {
  notInitialized,
  invalidAdUnitId,
  networkError,
  loadTimeout,
  loadFailed,
  showFailed,
  unknown,
}

/// 광고 에러 정보를 담는 클래스
class AdError {
  final AdErrorType type;
  final String message;
  final dynamic originalError;

  const AdError({
    required this.type,
    required this.message,
    this.originalError,
  });

  @override
  String toString() => 'AdError(type: $type, message: $message)';
}

/// 광고 상태 정보를 담는 클래스
class AdState {
  final AdStatus status;
  final AdError? error;
  final DateTime? lastUpdated;

  const AdState({
    this.status = AdStatus.initial,
    this.error,
    this.lastUpdated,
  });

  AdState copyWith({
    AdStatus? status,
    AdError? error,
    DateTime? lastUpdated,
  }) {
    return AdState(
      status: status ?? this.status,
      error: error ?? this.error,
      lastUpdated: lastUpdated ?? DateTime.now(),
    );
  }

  bool get isInitial => status == AdStatus.initial;
  bool get isLoading => status == AdStatus.loading;
  bool get isLoaded => status == AdStatus.loaded;
  bool get isFailed => status == AdStatus.failed;
  bool get isShown => status == AdStatus.shown;
  bool get isClosed => status == AdStatus.closed;
}

/// 광고 콜백 인터페이스
abstract class AdCallback {
  void onAdLoaded();
  void onRewardedAdLoaded(RewardedAd ad);
  void onAdFailedToLoad(AdError error);
  void onAdShown();
  void onAdClosed();
  void onAdClicked();
  void onRewardedAdUserEarnedReward(RewardItem reward);
}

/// 기본 광고 콜백 구현
class DefaultAdCallback implements AdCallback {
  @override
  void onAdLoaded() {
    debugPrint('광고가 로드되었습니다.');
  }

  @override
  void onRewardedAdLoaded(RewardedAd ad) {
    debugPrint('보상형 광고가 로드되었습니다.');
  }

  @override
  void onAdFailedToLoad(AdError error) {
    debugPrint('광고 로드 실패: ${error.message}');
  }

  @override
  void onAdShown() {
    debugPrint('광고가 표시되었습니다.');
  }

  @override
  void onAdClosed() {
    debugPrint('광고가 닫혔습니다.');
  }

  @override
  void onAdClicked() {
    debugPrint('광고가 클릭되었습니다.');
  }

  @override
  void onRewardedAdUserEarnedReward(RewardItem reward) {
    debugPrint('보상 획득: ${reward.amount} ${reward.type}');
  }
}

/// 광고 설정 클래스
class AdConfig {
  final bool isTestMode;
  final List<String> testDeviceIds;
  final Map<String, Map<String, String>> testAdUnitIds;

  const AdConfig({
    this.isTestMode = kDebugMode,
    this.testDeviceIds = const [],
    this.testAdUnitIds = const {
      'android': {
        'banner': 'ca-app-pub-3940256099942544/6300978111',
        'interstitial': 'ca-app-pub-3940256099942544/1033173712',
        'rewarded': 'ca-app-pub-3940256099942544/5224354917',
        'native': 'ca-app-pub-3940256099942544/2247696110',
        'appOpen': 'ca-app-pub-3940256099942544/9257395921',
      },
      'ios': {
        'banner': 'ca-app-pub-3940256099942544/2934735716',
        'interstitial': 'ca-app-pub-3940256099942544/4411468910',
        'rewarded': 'ca-app-pub-3940256099942544/1712485313',
        'native': 'ca-app-pub-3940256099942544/3985214052',
        'appOpen': 'ca-app-pub-3940256099942544/5575463023',
      },
    },
  });
}

/// 광고 관리자 인터페이스
abstract class IAdManager {
  bool get isInitialized;
  AdConfig get config;
  String getAdUnitId(AdType adType, {required String adMobUnitId});
  Future<void> initialize(AdConfig config);
  Future<void> dispose();
  Future<BannerAd> createBannerAd({
    AdSize size,
    AdCallback? callback,
    required String adUnitId,
  });
  Future<InterstitialAd?> createInterstitialAd({
    AdCallback? callback,
    required String adUnitId,
  });
  Future<RewardedAd?> createRewardedAd({
    AdCallback? callback,
    required String adUnitId,
  });
  Future<NativeAd?> createNativeAd({
    AdCallback? callback,
    required String adUnitId,
  });
  Future<AppOpenAd?> createAppOpenAd({
    AdCallback? callback,
    required String adUnitId,
  });
}

/// AdMob 광고 관리자 구현
class AdMaster implements IAdManager {
  static final AdMaster _instance = AdMaster._internal();
  factory AdMaster() => _instance;
  AdMaster._internal();

  bool _isInitialized = false;
  AdConfig _config = const AdConfig();
  final Map<String, AdState> _adStates = {};
  final Map<String, Ad> _loadedAds = {};
  final Duration maxCacheDuration = const Duration(hours: 4);
  DateTime? _appOpenLoadTime;

  @override
  bool get isInitialized => _isInitialized;

  @override
  AdConfig get config => _config;

  @override
  String getAdUnitId(AdType adType, {required String adMobUnitId}) {
    return getAdUnitIdForType(adType, adMobUnitId: adMobUnitId);
  }

  /// 특정 광고 타입의 광고 ID를 가져오는 메서드
  String getAdUnitIdForType(AdType adType, {required String adMobUnitId}) {
    if (!_config.isTestMode) {
      return adMobUnitId;
    }

    final platform = Platform.isAndroid ? 'android' : 'ios';
    final isTest = _config.isTestMode;

    var adUnitId = _config.testAdUnitIds[platform]?[adType.name];

    if (adUnitId == null || adUnitId.isEmpty) {
      throw AdError(
        type: AdErrorType.invalidAdUnitId,
        message: '광고 ID가 존재하지 않습니다: $adType (${isTest ? '테스트' : '프로덕션'} 모드)',
      );
    }
    return adUnitId;
  }

  @override
  Future<void> initialize(AdConfig config) async {
    if (_isInitialized) return;

    _config = config;

    // 지원하지 않는 플랫폼에서는 초기화하지 않음
    if (!kIsWeb && !(Platform.isAndroid || Platform.isIOS)) {
      debugPrint('AdMaster: 지원하지 않는 플랫폼이므로 초기화하지 않습니다.');
      return;
    }

    try {
      await MobileAds.instance.initialize();

      if (config.testDeviceIds.isNotEmpty) {
        await MobileAds.instance.updateRequestConfiguration(
          RequestConfiguration(testDeviceIds: config.testDeviceIds),
        );
      }

      _isInitialized = true;
      debugPrint('AdMaster: 초기화 성공');
    } catch (e) {
      debugPrint('AdMaster: 초기화 실패: $e');
      throw AdError(
        type: AdErrorType.notInitialized,
        message: '광고 초기화 실패: $e',
        originalError: e,
      );
    }
  }

  @override
  Future<void> dispose() async {
    for (final ad in _loadedAds.values) {
      ad.dispose();
    }
    _loadedAds.clear();
    _adStates.clear();
    _isInitialized = false;
  }

  /// 광고 상태 업데이트
  void _updateAdState(String adId, AdState state) {
    _adStates[adId] = state;
  }

  /// 광고 상태 가져오기
  AdState? getAdState(String adId) {
    return _adStates[adId];
  }

  /// 모든 광고 상태 가져오기
  Map<String, AdState> getAllAdStates() {
    return Map.unmodifiable(_adStates);
  }

  @override
  Future<BannerAd> createBannerAd({
    AdSize size = AdSize.banner,
    AdCallback? callback,
    required String adUnitId,
  }) async {
    _ensureInitialized();

    final adId = 'banner_${DateTime.now().millisecondsSinceEpoch}';
    final finalAdUnitId =
        getAdUnitIdForType(AdType.banner, adMobUnitId: adUnitId);

    _updateAdState(adId, const AdState(status: AdStatus.loading));

    try {
      final bannerAd = BannerAd(
        adUnitId: finalAdUnitId,
        size: size,
        request: const AdRequest(),
        listener: BannerAdListener(
          onAdLoaded: (ad) {
            _loadedAds[adId] = ad;
            _updateAdState(adId, const AdState(status: AdStatus.loaded));
            callback?.onAdLoaded();
          },
          onAdFailedToLoad: (ad, error) {
            final adError = AdError(
              type: AdErrorType.loadFailed,
              message: error.message,
              originalError: error,
            );
            _updateAdState(
                adId, AdState(status: AdStatus.failed, error: adError));
            ad.dispose();
            callback?.onAdFailedToLoad(adError);
          },
        ),
      );

      await bannerAd.load();
      return bannerAd;
    } catch (e) {
      final adError = AdError(
        type: AdErrorType.unknown,
        message: '배너 광고 생성 실패: $e',
        originalError: e,
      );
      _updateAdState(adId, AdState(status: AdStatus.failed, error: adError));
      callback?.onAdFailedToLoad(adError);
      rethrow;
    }
  }

  @override
  Future<InterstitialAd?> createInterstitialAd({
    AdCallback? callback,
    required String adUnitId,
  }) async {
    _ensureInitialized();

    final adId = 'interstitial_${DateTime.now().millisecondsSinceEpoch}';
    final finalAdUnitId =
        getAdUnitIdForType(AdType.interstitial, adMobUnitId: adUnitId);

    _updateAdState(adId, const AdState(status: AdStatus.loading));

    try {
      InterstitialAd? interstitialAd;

      await InterstitialAd.load(
        adUnitId: finalAdUnitId,
        request: const AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
          onAdLoaded: (ad) {
            interstitialAd = ad;
            _loadedAds[adId] = ad;
            _updateAdState(adId, const AdState(status: AdStatus.loaded));
            callback?.onAdLoaded();
          },
          onAdFailedToLoad: (error) {
            final adError = AdError(
              type: AdErrorType.loadFailed,
              message: error.message,
              originalError: error,
            );
            _updateAdState(
                adId, AdState(status: AdStatus.failed, error: adError));
            callback?.onAdFailedToLoad(adError);
          },
        ),
      );

      return interstitialAd;
    } catch (e) {
      final adError = AdError(
        type: AdErrorType.unknown,
        message: '전면 광고 생성 실패: $e',
        originalError: e,
      );
      _updateAdState(adId, AdState(status: AdStatus.failed, error: adError));
      callback?.onAdFailedToLoad(adError);
      rethrow;
    }
  }

  @override
  Future<RewardedAd?> createRewardedAd({
    AdCallback? callback,
    required String adUnitId,
  }) async {
    _ensureInitialized();

    final adId = 'rewarded_${DateTime.now().millisecondsSinceEpoch}';
    final finalAdUnitId =
        getAdUnitIdForType(AdType.rewarded, adMobUnitId: adUnitId);

    _updateAdState(adId, const AdState(status: AdStatus.loading));

    try {
      RewardedAd? rewardedAd;

      await RewardedAd.load(
        adUnitId: finalAdUnitId,
        request: const AdRequest(),
        rewardedAdLoadCallback: RewardedAdLoadCallback(
          onAdLoaded: (ad) {
            rewardedAd = ad;
            _loadedAds[adId] = ad;
            _updateAdState(adId, const AdState(status: AdStatus.loaded));
            callback?.onRewardedAdLoaded(ad);
          },
          onAdFailedToLoad: (error) {
            final adError = AdError(
              type: AdErrorType.loadFailed,
              message: error.message,
              originalError: error,
            );
            _updateAdState(
                adId, AdState(status: AdStatus.failed, error: adError));
            callback?.onAdFailedToLoad(adError);
          },
        ),
      );

      return rewardedAd;
    } catch (e) {
      final adError = AdError(
        type: AdErrorType.unknown,
        message: '보상형 광고 생성 실패: $e',
        originalError: e,
      );
      _updateAdState(adId, AdState(status: AdStatus.failed, error: adError));
      callback?.onAdFailedToLoad(adError);
      rethrow;
    }
  }

  @override
  Future<NativeAd?> createNativeAd({
    AdCallback? callback,
    required String adUnitId,
  }) async {
    _ensureInitialized();

    final adId = 'native_${DateTime.now().millisecondsSinceEpoch}';
    final finalAdUnitId =
        getAdUnitIdForType(AdType.native, adMobUnitId: adUnitId);

    _updateAdState(adId, const AdState(status: AdStatus.loading));

    try {
      final nativeAd = NativeAd(
        adUnitId: finalAdUnitId,
        factoryId: 'listTile',
        request: const AdRequest(),
        listener: NativeAdListener(
          onAdLoaded: (ad) {
            _loadedAds[adId] = ad;
            _updateAdState(adId, const AdState(status: AdStatus.loaded));
            callback?.onAdLoaded();
          },
          onAdFailedToLoad: (ad, error) {
            final adError = AdError(
              type: AdErrorType.loadFailed,
              message: error.message,
              originalError: error,
            );
            _updateAdState(
                adId, AdState(status: AdStatus.failed, error: adError));
            ad.dispose();
            callback?.onAdFailedToLoad(adError);
          },
        ),
      );

      await nativeAd.load();
      return nativeAd;
    } catch (e) {
      final adError = AdError(
        type: AdErrorType.unknown,
        message: '네이티브 광고 생성 실패: $e',
        originalError: e,
      );
      _updateAdState(adId, AdState(status: AdStatus.failed, error: adError));
      callback?.onAdFailedToLoad(adError);
      rethrow;
    }
  }

  Future<void> showAppOpenAdIfAvailable({
    required String adUnitId,
    AdCallback? callback,
  }) async {
    const adId = 'appOpen';

    if (_adStates[adId] == null ||
        DateTime.now().subtract(maxCacheDuration).isAfter(_appOpenLoadTime!)) {
      await createAppOpenAd(adUnitId: adUnitId, callback: callback);
      return;
    }
  }

  @override
  Future<AppOpenAd?> createAppOpenAd({
    AdCallback? callback,
    required String adUnitId,
  }) async {
    _ensureInitialized();

    const adId = 'appOpen';
    final finalAdUnitId =
        getAdUnitIdForType(AdType.appOpen, adMobUnitId: adUnitId);

    _updateAdState(adId, const AdState(status: AdStatus.loading));

    try {
      AppOpenAd? appOpenAd;

      await AppOpenAd.load(
        adUnitId: finalAdUnitId,
        request: const AdRequest(),
        adLoadCallback: AppOpenAdLoadCallback(
          onAdLoaded: (ad) {
            appOpenAd = ad;
            _loadedAds[adId] = ad;
            _updateAdState(adId, const AdState(status: AdStatus.loaded));
            _appOpenLoadTime = DateTime.now();

            ad.show();
            callback?.onAdLoaded();
          },
          onAdFailedToLoad: (error) {
            print('error: $error');
            final adError = AdError(
              type: AdErrorType.loadFailed,
              message: error.message,
              originalError: error,
            );
            _updateAdState(
                adId, AdState(status: AdStatus.failed, error: adError));
            callback?.onAdFailedToLoad(adError);
          },
        ),
      );

      return appOpenAd;
    } catch (e) {
      print('error: $e');
      final adError = AdError(
        type: AdErrorType.unknown,
        message: '앱 오픈 광고 생성 실패: $e',
        originalError: e,
      );
      _updateAdState(adId, AdState(status: AdStatus.failed, error: adError));
      callback?.onAdFailedToLoad(adError);
      rethrow;
    }
  }

  /// 초기화 확인
  void _ensureInitialized() {
    if (!_isInitialized) {
      throw const AdError(
        type: AdErrorType.notInitialized,
        message: '광고가 초기화되지 않았습니다.',
      );
    }
  }

  /// 모든 광고 제거
  void removeAllAds() {
    for (final ad in _loadedAds.values) {
      ad.dispose();
    }
    _loadedAds.clear();
    _adStates.clear();
  }

  /// 로드된 광고 개수
  int get loadedAdCount => _loadedAds.length;

  /// 광고 상태 개수
  int get adStateCount => _adStates.length;
}

/// 광고 위젯 래퍼
class AdMasterWidget extends StatefulWidget {
  final Widget Function(AdState state, AdWithView? ad) builder;
  final AdType adType;
  final AdSize? adSize;
  final AdCallback? callback;
  final Widget? loadingWidget;
  final Widget? errorWidget;
  final String adUnitId;
  final String androidAdUnitId;
  final bool? forceTestMode;

  const AdMasterWidget({
    super.key,
    required this.builder,
    required this.adType,
    this.adSize,
    this.callback,
    this.loadingWidget,
    this.errorWidget,
    required this.adUnitId,
    required this.androidAdUnitId,
    this.forceTestMode,
  });

  @override
  State<AdMasterWidget> createState() => _AdMasterWidgetState();
}

class _AdMasterWidgetState extends State<AdMasterWidget> {
  AdState _adState = const AdState();
  Ad? _ad;

  @override
  void initState() {
    super.initState();
    _loadAd();
  }

  @override
  void dispose() {
    _ad?.dispose();
    super.dispose();
  }

  Future<void> _loadAd() async {
    setState(() {
      _adState = const AdState(status: AdStatus.loading);
    });

    try {
      final adMaster = AdMaster();

      switch (widget.adType) {
        case AdType.banner:
          _ad = await adMaster.createBannerAd(
            size: widget.adSize ?? AdSize.banner,
            callback: widget.callback,
            adUnitId:
                Platform.isAndroid ? widget.androidAdUnitId : widget.adUnitId,
          );
          break;
        case AdType.interstitial:
          _ad = await adMaster.createInterstitialAd(
            callback: widget.callback,
            adUnitId:
                Platform.isAndroid ? widget.androidAdUnitId : widget.adUnitId,
          );
          break;
        case AdType.rewarded:
          _ad = await adMaster.createRewardedAd(
            callback: widget.callback,
            adUnitId:
                Platform.isAndroid ? widget.androidAdUnitId : widget.adUnitId,
          );
          break;
        case AdType.native:
          _ad = await adMaster.createNativeAd(
            callback: widget.callback,
            adUnitId:
                Platform.isAndroid ? widget.androidAdUnitId : widget.adUnitId,
          );
          break;
        case AdType.appOpen:
          _ad = await adMaster.createAppOpenAd(
            callback: widget.callback,
            adUnitId:
                Platform.isAndroid ? widget.androidAdUnitId : widget.adUnitId,
          );
          break;
      }

      if (mounted) {
        setState(() {
          _adState = const AdState(status: AdStatus.loaded);
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _adState = AdState(
            status: AdStatus.failed,
            error: AdError(
              type: AdErrorType.unknown,
              message: e.toString(),
              originalError: e,
            ),
          );
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_adState.isLoading) {
      return widget.loadingWidget ??
          Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                'ad.loading'.tr(),
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
            ),
          );
    }

    if (_adState.isFailed) {
      return widget.errorWidget ??
          Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Text(
                'ad.loadFailed'.tr(),
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
            ),
          );
    }

    return widget.builder(_adState, _ad as AdWithView);
  }
}
