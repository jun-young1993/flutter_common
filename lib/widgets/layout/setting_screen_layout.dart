import 'package:flutter/material.dart';
import 'package:flutter_common/constants/common_constants.dart';
import 'package:flutter_common/constants/juny_constants.dart';
import 'package:flutter_common/state/app_config/app_config_bloc.dart';
import 'package:flutter_common/state/app_config/app_config_event.dart';
import 'package:flutter_common/state/app_config/app_config_selector.dart';
import 'package:flutter_common/state/app_config/app_config_state.dart';
import 'package:flutter_common/widgets/layout/sections/can_update_row.dart';
import 'package:flutter_common/widgets/layout/sections/share_app_row.dart';
import 'package:package_info_plus/package_info_plus.dart';

class SettingScreenLayout extends StatefulWidget {
  const SettingScreenLayout(
      {Key? key,
      required this.appConfigBloc,
      required this.appKey,
      this.topChildren = const [],
      this.bottomChildren = const []})
      : super(key: key);
  final List<Widget> topChildren;
  final List<Widget> bottomChildren;
  final AppConfigBloc appConfigBloc;
  final AppKeys appKey;
  @override
  State<SettingScreenLayout> createState() => _SettingScreenLayoutState();
}

class _SettingScreenLayoutState extends State<SettingScreenLayout> {
  String? _version;

  AppConfigBloc get appConfigBloc => widget.appConfigBloc;
  AppKeys get appKey => widget.appKey;

  Future<void> _getVersion() async {
    final packageInfo = await PackageInfo.fromPlatform();
    setState(() {
      _version = packageInfo.version;
      if (_version != null) {
        appConfigBloc.add(AppConfigEvent.checkCanUpdate(appKey, _version!));
      }
    });
  }

  @override
  void initState() {
    super.initState();
    appConfigBloc.add(AppConfigEvent.initialize(appKey));
    _getVersion();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isTablet = screenWidth > 600;
    final horizontalPadding = isTablet ? 10.0 : 5.0;
    final maxWidth = isTablet ? 600.0 : double.infinity;

    return SingleChildScrollView(
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height -
                AppBar().preferredSize.height,
            maxWidth: maxWidth,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: Column(
              children: [
                ...widget.topChildren,
                RemoteAppConfigSelector((config) {
                  return _buildInfoSection(config);
                }),
                ...widget.bottomChildren,
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInfoSection(AppConfigState? appConfig) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isTablet = screenWidth > 600;

    return Container(
      margin:
          EdgeInsets.symmetric(horizontal: 20, vertical: isTablet ? 24 : 16),
      padding: EdgeInsets.all(isTablet ? 24 : 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  Icons.info_outline,
                  size: isTablet ? 24 : 20,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              const SizedBox(width: 12),
              Text(
                '기타',
                style: TextStyle(
                  fontSize: isTablet ? 20 : 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey.shade800,
                ),
              ),
            ],
          ),
          SizedBox(height: isTablet ? 24 : 20),
          Container(
            padding: EdgeInsets.all(isTablet ? 16 : 12),
            decoration: BoxDecoration(
              color: Colors.grey.shade50,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey.shade200),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(
                        Icons.new_releases_outlined,
                        size: isTablet ? 20 : 16,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Text(
                      '버전 정보',
                      style: TextStyle(
                        fontSize: isTablet ? 16 : 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade700,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        _version ?? '0.0.0',
                        style: TextStyle(
                          fontSize: isTablet ? 14 : 12,
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: isTablet ? 16 : 12),
                RemoteAppConfigSelector((config) {
                  if (config != null) {
                    return CanUpdateRow(
                      canUpdate: config.isUpdateAvailable,
                      version: config.version,
                      onUpdate: () {
                        appConfigBloc
                            .add(const AppConfigEvent.moveUpdateStore());
                      },
                    );
                  } else {
                    return const SizedBox.shrink();
                  }
                }),
              ],
            ),
          ),
          SizedBox(height: isTablet ? 24 : 20),
          RemoteAppConfigSelector((config) {
            if (config == null) {
              return const SizedBox.shrink();
            }
            final url =
                CommonConstants.getStoreUrl(config.packageName, config.appleId);
            return ShareAppRow(
              appStoreUrl: url,
              appName: config.description,
              invitationMessage:
                  '${config.description}에 초대합니다.\n아래 QR 코드를 통해 앱을 설치해주세요.',
              androidPackageName: config.packageName,
              appleId: config.appleId,
            );
          }),
          SizedBox(height: isTablet ? 24 : 20),
          Container(
            padding: EdgeInsets.all(isTablet ? 16 : 12),
            decoration: BoxDecoration(
              color: Colors.grey.shade50,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey.shade200),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Theme.of(context).primaryColor.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(
                        Icons.help_outline,
                        size: isTablet ? 20 : 16,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Text(
                      '문의',
                      style: TextStyle(
                        fontSize: isTablet ? 16 : 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: isTablet ? 16 : 12),
                Padding(
                  padding: EdgeInsets.only(left: isTablet ? 40 : 36),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '아래 이메일로 문의해주세요.',
                        style: TextStyle(
                          fontSize: isTablet ? 15 : 13,
                          color: Colors.grey.shade600,
                        ),
                      ),
                      SizedBox(height: isTablet ? 8 : 6),
                      Row(
                        children: [
                          Icon(
                            Icons.email_outlined,
                            size: isTablet ? 16 : 14,
                            color: Theme.of(context).primaryColor,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            JunyConstants.email,
                            style: TextStyle(
                              fontSize: isTablet ? 15 : 13,
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
