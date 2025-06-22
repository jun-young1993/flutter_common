import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdManager {
  static final AdManager _instance = AdManager._internal();
  factory AdManager() => _instance;
  AdManager._internal();

  bool _isInitialized = false;
  final bool _isTestMode = kDebugMode;

  static setTestIds(Map<String, Map<String, String>> testAdUnitIds) {
    _testAdUnitIds = testAdUnitIds;
  }

  static setRealAdUnitIds(Map<String, Map<String, String>> realAdUnitIds) {
    _realAdUnitIds = realAdUnitIds;
  }

  // 테스트 광고 ID
  static Map<String, Map<String, String>> _testAdUnitIds = {
    'android': {
      'banner': 'ca-app-pub-3940256099942544/6300978111',
    },
    'ios': {
      'banner': 'ca-app-pub-3940256099942544/2934735716',
    },
  };

  // 실제 광고 ID (필요시 채워넣으세요)
  static Map<String, Map<String, String>> _realAdUnitIds = {
    'android': {
      'banner': '', // 실제 광고 ID 입력
    },
    'ios': {
      'banner': '', // 실제 광고 ID 입력
    },
  };

  String _getAdUnitId(String adType) {
    final platform = Platform.isAndroid ? 'android' : 'ios';
    final adUnitIds = _isTestMode ? _testAdUnitIds : _realAdUnitIds;
    final adUnitId = adUnitIds[platform]?[adType];
    if (adUnitId == null || adUnitId.isEmpty) {
      throw Exception('광고 ID가 존재하지 않습니다.');
    }
    return adUnitId;
  }

  Future<void> initialize() async {
    if (_isInitialized) return;

    // 웹, 데스크톱 등 지원하지 않는 플랫폼에서는 초기화하지 않음
    if (!kIsWeb && !(Platform.isAndroid || Platform.isIOS)) {
      debugPrint('AdManager: 지원하지 않는 플랫폼이므로 초기화하지 않습니다.');
      return;
    }

    try {
      await MobileAds.instance.initialize();
      await MobileAds.instance.updateRequestConfiguration(
        RequestConfiguration(
          testDeviceIds: ['TEST_DEVICE_ID'], // 실제 테스트 기기 ID로 교체
        ),
      );
      _isInitialized = true;
      debugPrint('AdManager: 초기화 성공');
    } catch (e) {
      debugPrint('AdManager: 초기화 실패: $e');
      rethrow;
    }
  }

  BannerAd createBannerAd(
      {void Function()? onLoaded, void Function(LoadAdError)? onFailed}) {
    if (!_isInitialized) {
      throw Exception('AdManager가 초기화되지 않았습니다.');
    }
    return BannerAd(
      adUnitId: _getAdUnitId('banner'),
      size: AdSize.banner,
      request: const AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          debugPrint('배너 광고가 로드되었습니다.');
          onLoaded?.call();
        },
        onAdFailedToLoad: (ad, error) {
          debugPrint('배너 광고 로드 실패: ${error.message}');
          debugPrint('배너 광고 로드 실패: $error');
          ad.dispose();
          onFailed?.call(error);
        },
      ),
    );
  }

  // 전면 광고 생성
  Future<InterstitialAd?> createInterstitialAd() async {
    InterstitialAd? interstitialAd;
    await InterstitialAd.load(
      adUnitId: _getAdUnitId('interstitial'),
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          interstitialAd = ad;
          debugPrint('전면 광고가 로드되었습니다.');
        },
        onAdFailedToLoad: (error) {
          debugPrint('전면 광고 로드 실패: ${error.message}');
        },
      ),
    );
    return interstitialAd;
  }

  // 보상형 광고 생성
  Future<RewardedAd?> createRewardedAd() async {
    RewardedAd? rewardedAd;
    await RewardedAd.load(
      adUnitId: _getAdUnitId('rewarded'),
      request: const AdRequest(),
      rewardedAdLoadCallback: RewardedAdLoadCallback(
        onAdLoaded: (ad) {
          rewardedAd = ad;
          debugPrint('보상형 광고가 로드되었습니다.');
        },
        onAdFailedToLoad: (error) {
          debugPrint('보상형 광고 로드 실패: ${error.message}');
        },
      ),
    );
    return rewardedAd;
  }
}
