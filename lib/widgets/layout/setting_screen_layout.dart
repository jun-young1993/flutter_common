import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common/common_il8n.dart';
import 'package:flutter_common/constants/juny_constants.dart';
import 'package:flutter_common/constants/size_constants.dart';
import 'package:flutter_common/models/user/user.dart';
import 'package:flutter_common/state/app_config/app_config_bloc.dart';
import 'package:flutter_common/state/app_config/app_config_event.dart';
import 'package:flutter_common/state/app_config/app_config_selector.dart';
import 'package:flutter_common/state/app_config/app_config_state.dart';
import 'package:flutter_common/state/user/user_bloc.dart';
import 'package:flutter_common/state/user/user_event.dart';
import 'package:flutter_common/state/user/user_selector.dart';
import 'package:flutter_common/state/verification/verification_bloc.dart';
import 'package:flutter_common/state/verification/verification_event.dart';
import 'package:flutter_common/state/verification/verification_selector.dart';
import 'package:flutter_common/widgets/buttons/awesom_text_button.dart';
import 'package:flutter_common/widgets/dialogs/app_dialog.dart';
import 'package:flutter_common/widgets/dialogs/input_dialog.dart';
import 'package:flutter_common/widgets/fields/pretty_select_box.dart';
import 'package:flutter_common/widgets/layout/sections/can_update_row.dart';
import 'package:flutter_common/widgets/layout/sections/setting/locale.dart';
import 'package:flutter_common/widgets/layout/sections/share_app_row.dart';
import 'package:flutter_common/widgets/lib/container/card_container.dart';
import 'package:flutter_common/widgets/lib/container/card_container_item.dart';
import 'package:flutter_common/widgets/textes/awesome_description_text.dart';
import 'package:flutter_common/widgets/timer/countdown_display.dart';
import 'package:flutter_common/widgets/verified/verified_banner.dart';
import 'package:package_info_plus/package_info_plus.dart';

class SettingScreenLayout extends StatefulWidget {
  const SettingScreenLayout(
      {Key? key,
      required this.appKey,
      this.topChildren = const [],
      this.bottomChildren = const [],
      this.onUserDeleted,
      this.useAppUsers = false})
      : super(key: key);
  final List<Widget> topChildren;
  final List<Widget> bottomChildren;
  final void Function(User user)? onUserDeleted;
  final bool useAppUsers;

  final AppKeys appKey;
  @override
  State<SettingScreenLayout> createState() => _SettingScreenLayoutState();
}

class _SettingScreenLayoutState extends State<SettingScreenLayout> {
  String? _version;
  bool _isInitialized = false;
  UserBloc get userBloc => context.read<UserBloc>();
  AppKeys get appKey => widget.appKey;
  AppConfigBloc get appConfigBloc => context.read<AppConfigBloc>();
  VerificationBloc get verificationBloc => context.read<VerificationBloc>();
  Locale get locale => context.locale;
  bool get useAppUsers => widget.useAppUsers;

  /// 버전 정보를 가져오는 메서드
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
    _getVersion();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // didChangeDependencies는 여러 번 호출될 수 있으므로 플래그로 한 번만 실행
    if (!_isInitialized) {
      _isInitialized = true;
      appConfigBloc.add(AppConfigEvent.initialize(appKey, locale));
    }
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
                Column(children: widget.topChildren),
                RemoteAppConfigSelector((config) {
                  return Column(
                    children: [
                      _buildUserInfo(config),
                      _buildInfoSection(config),
                    ],
                  );
                }),
                Column(children: widget.bottomChildren),
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
      title: Tr.app.userInfo.tr(),
      icon: Icons.person_outline,
      children: [
        UserInfoSelector((user) {
          if (user == null) {
            return Center(
              child: Text(
                Tr.user.userNotFound.tr(),
                style: TextStyle(
                  fontSize: SizeConstants.getTextSmallFontSize(context),
                  color: Colors.grey.shade600,
                ),
              ),
            );
          }
          return Row(
            children: [
              Expanded(
                  child: Text(
                user.username ?? '',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width < 400 ? 16 : 20,
                  fontWeight: FontWeight.bold,
                  height: 1.3,
                ),
              )),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () {
                  InputDialog.show(
                    title: Tr.user.userName.tr(),
                    hintText: Tr.user.userName.tr(),
                    initialValue: user.username ?? '',
                    onConfirm: (value) {
                      userBloc.add(UserEvent.updateUserName(value));
                    },
                    context: context,
                  );
                },
                color: Colors.grey,
                iconSize: 20,
              ),
            ],
          );
        }),
        SizedBox(height: SizeConstants.getColumnSpacing(context)),
        UserInfoSelector((user) {
          return VerificationLoadingSelector((isLoading) {
            return CardContainerItem(
              isLoading: isLoading,
              icon: Icons.email_sharp,
              title: Tr.app.authEmail.tr(),
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
                                      decoration: InputDecoration(
                                        labelText: Tr.app.inputAuthNumber.tr(),
                                        border: const OutlineInputBorder(),
                                        isDense: true,
                                      ),
                                      keyboardType: TextInputType.number,
                                      maxLength: 6,
                                      onChanged: (value) {
                                        if (value.length == 6) {
                                          if (user?.id == null) {
                                            AppDialog.showError(
                                                context: context,
                                                title: Tr.app.error.tr(),
                                                message:
                                                    Tr.error.userNotFound.tr());
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
                                            text: Tr.app.resendAuthNumber.tr(),
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
                                text: Tr.app.emailVerification.tr(),
                                fontSize: SizeConstants.getSmallButtonFontSize(
                                    context),
                                padding: SizeConstants.getSmallButtonPadding(
                                    context),
                                icon: Icons.mark_email_read_outlined,
                                onPressed: () {
                                  InputDialog.show(
                                    context: context,
                                    title: Tr.app.emailVerification.tr(),
                                    description:
                                        Tr.message.emailVerification.tr(),
                                    hintText: Tr.app.email.tr(),
                                    validator: (value) =>
                                        value == null || value.isEmpty
                                            ? Tr.message.inputEmail.tr()
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
                      AwesomeDescriptionText(
                        text: Tr.message.emailVerification.tr(),
                        icon: Icons.mark_email_read_outlined,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  )
              ],
            );
          });
        }),
        // 사용자 데이터 삭제 버튼 추가
        UserInfoSelector((user) {
          return Column(
            children: [
              SizedBox(
                  height: SizeConstants.getContainerVerticalMargin(context)),
              CardContainerItem(
                initiallyExpanded: false,
                icon: Icons.delete_forever_outlined,
                title: Tr.app.deleteUserData.tr(),
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal:
                          SizeConstants.getContainerHorizontalMargin(context),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                            child: AwesomeTextButton(
                          text: Tr.app.deleteUserData.tr(),
                          fontSize:
                              SizeConstants.getSmallButtonFontSize(context),
                          padding: SizeConstants.getSmallButtonPadding(context),
                          icon: Icons.delete_forever_outlined,
                          onPressed: () {
                            _showDeleteUserDataDialog(context, () {
                              if (user == null) {
                                return;
                              }
                              userBloc.add(UserEvent.deleteUserData(user));
                              widget.onUserDeleted?.call(user);
                            });
                          },
                        )),
                        SizedBox(
                            height: SizeConstants.getColumnSpacing(context)),
                        AwesomeDescriptionText(
                          text: Tr.message.deleteUserDataWarning.tr(),
                          icon: Icons.delete_forever_outlined,
                          textAlign: TextAlign.center,
                          color: Colors.red.shade600,
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          );
        }),
        SizedBox(height: SizeConstants.getColumnSpacing(context)),
        if (useAppUsers == true) ...[
          UserListSelector((userList) {
            return UserInfoSelector((user) {
              if (user == null) {
                return const SizedBox.shrink();
              }
              return CardContainerItem(
                initiallyExpanded: false,
                icon: Icons.people_outline,
                title: Tr.app.profileList.tr(),
                children: [
                  Row(
                    children: [
                      PrettySelectBox<User>(
                        items: userList,
                        label: user.username ?? 'unknown',
                        selectedValue: user,
                        onChanged: (value) {
                          if (value != null) {
                            userBloc.add(UserEvent.changeAppUser(value));
                          }
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.add_outlined),
                        onPressed: () {
                          InputDialog.show(
                            title: Tr.app.addProfile.tr(),
                            hintText: Tr.app.addProfile.tr(),
                            onConfirm: (value) {
                              userBloc
                                  .add(UserEvent.addAppUser(username: value));
                            },
                            context: context,
                          );
                        },
                        color: Colors.grey,
                        iconSize: 20,
                      ),
                    ],
                  )
                ],
              );
            });
          })
        ]
      ],
    );
  }

  Widget _buildInfoSection(AppConfigState? appConfig) {
    return CardContainer(
      title: Tr.app.appInfo.tr(),
      icon: Icons.info_outline,
      children: [
        CardContainerItem(
            initiallyExpanded: false,
            icon: Icons.new_releases_outlined,
            title: 'v${_version ?? '0.0.0'}',
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    kDebugMode ? Icons.bug_report : Icons.check_circle,
                    size: 16,
                    color: kDebugMode
                        ? Colors.orange.shade700
                        : Colors.green.shade700,
                  ),
                  const SizedBox(width: 6),
                  Text(
                    kDebugMode ? 'Debug' : 'Release',
                    style: TextStyle(
                      fontSize: SizeConstants.getTextSmallFontSize(context),
                      fontWeight: FontWeight.w600,
                      color: kDebugMode
                          ? Colors.orange.shade700
                          : Colors.green.shade700,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 6),
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
            title: Tr.app.shareApp.tr(),
            children: [
              RemoteAppConfigSelector((config) {
                if (config == null) {
                  return const SizedBox.shrink();
                }
                return ShareAppRow(
                  appConfig: config,
                  invitationMessage: Tr.message.inviteMessage
                      .tr(namedArgs: {'appName': config.description}),
                );
              })
            ]),
        SizedBox(height: SizeConstants.getContainerVerticalMargin(context)),
        AppConfigLanguageSelector((language) {
          return CardContainerItem(
            initiallyExpanded: false,
            title: Tr.message.currentLanguage.tr(
              namedArgs: {'language': language.name},
            ),
            icon: Icons.language_outlined,
            children: [
              LocaleSettingSection(
                language: language,
                onLanguageChanged: (language) {
                  appConfigBloc.add(AppConfigEvent.setLanguage(language));
                },
              )
            ],
          );
        }),
        SizedBox(height: SizeConstants.getContainerVerticalMargin(context)),
        CardContainerItem(
            initiallyExpanded: false,
            icon: Icons.email_outlined,
            title: Tr.app.contact.tr(),
            children: [
              Padding(
                padding: EdgeInsets.only(
                    left: SizeConstants.getContainerHorizontalMargin(context)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Tr.message.contact.tr(),
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

  void _showDeleteUserDataDialog(
      BuildContext context, void Function() onConfirmed) {
    AppDialog.show(
      context: context,
      title: Tr.message.deleteUserDataTitle.tr(),
      message:
          '${Tr.message.deleteUserDataDescription.tr()}\n\n${Tr.message.deleteUserDataWarning.tr()}',
      confirmText: Tr.app.confirm.tr(),
      cancelText: Tr.app.cancel.tr(),
      type: DialogType.warning,
      onConfirm: onConfirmed,
    );
  }
}
