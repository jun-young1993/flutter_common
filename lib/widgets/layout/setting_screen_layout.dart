import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/constants/common_constants.dart';
import 'package:flutter_common/constants/juny_constants.dart';
import 'package:flutter_common/constants/size_constants.dart';
import 'package:flutter_common/extensions/app_exception.dart';
import 'package:flutter_common/state/app_config/app_config_bloc.dart';
import 'package:flutter_common/state/app_config/app_config_event.dart';
import 'package:flutter_common/state/app_config/app_config_selector.dart';
import 'package:flutter_common/state/app_config/app_config_state.dart';
import 'package:flutter_common/state/user/user_selector.dart';
import 'package:flutter_common/state/verification/verification_bloc.dart';
import 'package:flutter_common/state/verification/verification_event.dart';
import 'package:flutter_common/state/verification/verification_selector.dart';
import 'package:flutter_common/state/verification/verification_state.dart';
import 'package:flutter_common/widgets/buttons/awesom_text_button.dart';
import 'package:flutter_common/widgets/dialogs/app_dialog.dart';
import 'package:flutter_common/widgets/dialogs/input_dialog.dart';
import 'package:flutter_common/widgets/dialogs/report_dialog.dart';
import 'package:flutter_common/widgets/layout/sections/can_update_row.dart';
import 'package:flutter_common/widgets/layout/sections/share_app_row.dart';
import 'package:flutter_common/widgets/lib/container/card_container.dart';
import 'package:flutter_common/widgets/lib/container/card_container_item.dart';
import 'package:flutter_common/widgets/loader/loading_overay.dart';
import 'package:flutter_common/widgets/textes/awesome_description_text.dart';
import 'package:flutter_common/widgets/timer/countdown_display.dart';
import 'package:flutter_common/widgets/toast/toast.dart';
import 'package:flutter_common/widgets/verified/verified_banner.dart';
import 'package:package_info_plus/package_info_plus.dart';

class SettingScreenLayout extends StatefulWidget {
  const SettingScreenLayout(
      {Key? key,
      required this.appKey,
      this.topChildren = const [],
      this.bottomChildren = const []})
      : super(key: key);
  final List<Widget> topChildren;
  final List<Widget> bottomChildren;

  final AppKeys appKey;
  @override
  State<SettingScreenLayout> createState() => _SettingScreenLayoutState();
}

class _SettingScreenLayoutState extends State<SettingScreenLayout> {
  String? _version;

  AppKeys get appKey => widget.appKey;
  AppConfigBloc get appConfigBloc => context.read<AppConfigBloc>();
  VerificationBloc get verificationBloc => context.read<VerificationBloc>();

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
        UserInfoSelector((user) {
          return VerificationLoadingSelector((isLoading) {
            return CardContainerItem(
              isLoading: isLoading,
              icon: Icons.email_sharp,
              title: 'email 인증',
              initiallyExpanded: false,
              children: [
                if (user?.email != null)
                  VerifiedBanner(
                    label: '${user?.email}',
                  ),
                if (user?.email == null)
                  Column(
                    children: [
                      VerificationEmailVerifyingSelector((isEmailVerifying) {
                        return isEmailVerifying
                            ? Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 12.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    VerificationRemainingTimeSelector(
                                        (remainingTime) {
                                      if (remainingTime == 0) {
                                        return const SizedBox.shrink();
                                      }
                                      return CountdownDisplay(
                                        seconds: remainingTime,
                                        color: Colors.deepPurple,
                                        backgroundColor: Colors.grey.shade300,
                                        size: SizeConstants
                                            .getCountdownDisplaySize(context),
                                      );
                                    }),
                                    SizedBox(
                                        height: SizeConstants.getColumnSpacing(
                                            context)),
                                    // 인증번호 입력 필드
                                    TextField(
                                      decoration: const InputDecoration(
                                        labelText: '인증번호 입력',
                                        border: OutlineInputBorder(),
                                        isDense: true,
                                      ),
                                      keyboardType: TextInputType.number,
                                      maxLength: 6,
                                      onChanged: (value) {
                                        if (value.length == 6) {
                                          if (user?.id == null) {
                                            AppDialog.showError(
                                                context: context,
                                                title: '오류',
                                                message: '사용자 정보를 찾을 수 없습니다.');
                                            return;
                                          }
                                          verificationBloc.add(
                                              VerificationEvent.verifyAuthCode(
                                                  user!.id, value));
                                        }
                                      },
                                    ),
                                    const SizedBox(height: 8),
                                    // 버튼 레이아웃
                                    Wrap(
                                      spacing: SizeConstants
                                          .getContainerHorizontalMargin(
                                              context),
                                      runSpacing: 8,
                                      alignment: WrapAlignment.center,
                                      children: [
                                        VerificationEmailSelector((email) {
                                          if (email == null) {
                                            return const SizedBox.shrink();
                                          }
                                          return AwesomeTextButton(
                                            fontSize: SizeConstants
                                                    .getSmallButtonFontSize(
                                                        context) -
                                                2,
                                            padding: SizeConstants
                                                .getSmallButtonPadding(context),
                                            icon: Icons.refresh_outlined,
                                            text: '인증번호 재발송',
                                            onPressed: () {
                                              // 인증번호 재발송 로직
                                              verificationBloc.add(
                                                  VerificationEvent
                                                      .sendAuthEmail(email));
                                            },
                                          );
                                        }),
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            : AwesomeTextButton(
                                text: "email 인증하기",
                                fontSize: SizeConstants.getSmallButtonFontSize(
                                    context),
                                padding: SizeConstants.getSmallButtonPadding(
                                    context),
                                icon: Icons.mark_email_read_outlined,
                                onPressed: () {
                                  InputDialog.show(
                                    context: context,
                                    title: '이메일 인증',
                                    description:
                                        '이메일 인증을 통해 계정을 안전하게 유지하고 복구할 수 있습니다.',
                                    hintText: '이메일',
                                    maxLength: 20,
                                    validator: (value) =>
                                        value == null || value.isEmpty
                                            ? '이메일을 입력하세요.'
                                            : null,
                                    onConfirm: (value) {
                                      // 입력값 처리
                                      verificationBloc.add(
                                          VerificationEvent.sendAuthEmail(
                                              value));
                                    },
                                  );
                                },
                              );
                      }),
                      const AwesomeDescriptionText(
                        text: '이메일 인증을 통해 계정을 안전하게 유지하고 복구할 수 있습니다.',
                        icon: Icons.mark_email_read_outlined,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  )
              ],
            );
          });
        }),
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
