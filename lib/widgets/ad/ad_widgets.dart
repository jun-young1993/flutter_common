import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common/common_il8n.dart';
import 'package:flutter_common/widgets/ad/ad_manager.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class BannerAdWidget extends StatefulWidget {
  const BannerAdWidget({super.key});

  @override
  State<BannerAdWidget> createState() => _BannerAdWidgetState();
}

class _BannerAdWidgetState extends State<BannerAdWidget> {
  BannerAd? _bannerAd;
  bool _isAdLoaded = false;

  @override
  void initState() {
    super.initState();
    _loadAd();
  }

  Future<void> _loadAd() async {
    await AdManager().initialize();
    final bannerAd = AdManager().createBannerAd(
      onLoaded: () => setState(() => _isAdLoaded = true),
      onFailed: (error) => setState(() => _isAdLoaded = false),
    );
    await bannerAd.load();
    setState(() => _bannerAd = bannerAd);
  }

  @override
  void dispose() {
    _bannerAd?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_isAdLoaded || _bannerAd == null) return Text(Tr.error.adNotLoaded.tr());
    return SizedBox(
      width: _bannerAd!.size.width.toDouble(),
      height: _bannerAd!.size.height.toDouble(),
      child: AdWidget(ad: _bannerAd!),
    );
  }
}

class InterstitialAdWidget {
  static Future<void> show() async {
    final interstitialAd = await AdManager().createInterstitialAd();
    if (interstitialAd != null) {
      await interstitialAd.show();
    }
  }
}

class RewardedAdWidget {
  static Future<void> show({
    required Function(RewardItem) onRewarded,
    required Function() onFailedToShow,
  }) async {
    final rewardedAd = await AdManager().createRewardedAd();
    if (rewardedAd != null) {
      await rewardedAd.show(
        onUserEarnedReward: (_, reward) {
          onRewarded(reward);
        },
      );
    } else {
      onFailedToShow();
    }
  }
}
