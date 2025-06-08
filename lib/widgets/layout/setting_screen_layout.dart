import 'package:flutter/material.dart';
import 'package:flutter_common/constants/common_constants.dart';
import 'package:flutter_common/constants/juny_constants.dart';
import 'package:flutter_common/constants/size_constants.dart';
import 'package:flutter_common/state/app_config/app_config_bloc.dart';
import 'package:flutter_common/state/app_config/app_config_event.dart';
import 'package:flutter_common/state/app_config/app_config_selector.dart';
import 'package:flutter_common/state/app_config/app_config_state.dart';
import 'package:flutter_common/widgets/layout/sections/can_update_row.dart';
import 'package:flutter_common/widgets/layout/sections/share_app_row.dart';
import 'package:flutter_common/widgets/lib/container/card_container.dart';
import 'package:flutter_common/widgets/lib/container/card_container_item.dart';
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
    return SingleChildScrollView(
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height -
                AppBar().preferredSize.height,
            maxWidth: SizeConstants.maxWidth(context),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0.5, vertical: 0.5),
            child: Column(
              children: [
                ...widget.topChildren,
                RemoteAppConfigSelector((config) {
                  return Column(
                    children: [
                      _buildUserInfo(config),
                      _buildInfoSection(config),
                    ],
                  );
                }),
                ...widget.bottomChildren,
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildUserInfo(AppConfigState? appConfig) {
    if (appConfig == null) {
      return const SizedBox.shrink();
    }
    return CardContainer(
      title: '사용자 정보',
      icon: Icons.person_outline,
      children: [
        CardContainerItem(
          icon: Icons.email_sharp,
          title: 'email 인증',
          children: [
            const Text('이메일 인증을 통해 사용자 정보를 확인할 수 있습니다.'),
            SizedBox(height: SizeConstants.getColumnSpacing(context)),
            const Text('이메일 인증을 통해 사용자 정보를 확인할 수 있습니다.'),
          ],
        ),
      ],
    );
  }

  Widget _buildInfoSection(AppConfigState? appConfig) {
    return CardContainer(
      title: '앱정보',
      icon: Icons.info_outline,
      children: [
        CardContainerItem(
            initiallyExpanded: false,
            icon: Icons.new_releases_outlined,
            title: 'v${_version ?? '0.0.0'}',
            children: [
              SizedBox(height: SizeConstants.getColumnSpacing(context)),
              RemoteAppConfigSelector((config) {
                if (config != null) {
                  return CanUpdateRow(
                    canUpdate: config.isUpdateAvailable,
                    version: config.version,
                    onUpdate: () {
                      appConfigBloc.add(const AppConfigEvent.moveUpdateStore());
                    },
                  );
                } else {
                  return const SizedBox.shrink();
                }
              }),
            ]),
        SizedBox(height: SizeConstants.getContainerVerticalMargin(context)),
        CardContainerItem(
            initiallyExpanded: false,
            icon: Icons.share_outlined,
            title: '앱 공유하기',
            children: [
              RemoteAppConfigSelector((config) {
                if (config == null) {
                  return const SizedBox.shrink();
                }
                final url = CommonConstants.getStoreUrl(
                    config.packageName, config.appleId);
                return ShareAppRow(
                  appStoreUrl: url,
                  appName: config.description,
                  invitationMessage:
                      '${config.description}에 초대합니다.\n아래 QR 코드를 통해 앱을 설치해주세요.',
                  androidPackageName: config.packageName,
                  appleId: config.appleId,
                );
              })
            ]),
        SizedBox(height: SizeConstants.getContainerVerticalMargin(context)),
        CardContainerItem(
            initiallyExpanded: false,
            icon: Icons.email_outlined,
            title: '문의',
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: SizeConstants.getContainerHorizontalMargin(context)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '아래 이메일로 문의해주세요.',
                      style: TextStyle(
                        fontSize: SizeConstants.getTextSmallFontSize(context),
                        color: Colors.grey.shade600,
                      ),
                    ),
                    SizedBox(height: SizeConstants.getColumnSpacing(context)),
                    Row(
                      children: [
                        Icon(
                          Icons.email_outlined,
                          size: SizeConstants.getMediumIconSize(context),
                          color: Theme.of(context).primaryColor,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          JunyConstants.email,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize:
                                SizeConstants.getTextSmallFontSize(context),
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ]),
      ],
    );
  }
}
