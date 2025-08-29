import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common/common_il8n.dart';
import 'package:flutter_common/state/app_config/app_config_state.dart';

class LocaleSettingSection extends StatelessWidget {
  final AppLanguage language;
  final Function(AppLanguage) onLanguageChanged;
  const LocaleSettingSection({
    super.key,
    required this.language,
    required this.onLanguageChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text(
        //   Tr.app.selectLanguage.tr(),
        //   style: Theme.of(context).textTheme.titleLarge,
        // ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  if (context.locale != const Locale('ko')) {
                    context.setLocale(const Locale('ko'));
                    onLanguageChanged(AppLanguage.ko);
                  }
                },
                child: const Text('한국어'),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  if (context.locale != const Locale('en')) {
                    context.setLocale(const Locale('en'));
                    onLanguageChanged(AppLanguage.en);
                  }
                },
                child: const Text('English'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
