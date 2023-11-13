import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restart_app/restart_app.dart';
import 'package:video_gozle/core/constants.dart';
import 'package:video_gozle/features/global/presentation/widget/ink_wrapper.dart';
import 'package:video_gozle/features/settings/presentation/logic/settings/settings_provider.dart';
import 'package:video_gozle/generated/l10n.dart';

class ChooseLocaleDialog {
  static void show(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(S.current.language),
          titlePadding: EdgeInsets.only(top: 24, left: 24, right: 24, bottom: 12),
          contentPadding: EdgeInsets.only(left: 24, right: 24, bottom: 24),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Divider(),
              LangItemWidget(
                localeName: 'Русский',
                locale: AppConstants.russianLocale,
              ),
              LangItemWidget(
                localeName: 'English',
                locale: AppConstants.englishLocale,
              ),
              LangItemWidget(
                localeName: 'Turkmen',
                locale: AppConstants.turkmenLocale,
              ),
            ],
          ),
        );
      },
    );
  }
}

class LangItemWidget extends StatelessWidget {
  final String localeName;
  final Locale locale;
  const LangItemWidget({
    super.key,
    required this.locale,
    required this.localeName,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<SettingsProvider>(
      builder: (context, provider, _) {
        return InkWrapper(
          child: Container(
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              children: [
                Text(
                  localeName,
                  style: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Spacer(),
                if (provider.locale == locale)
                  Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(
                          color: Theme.of(context).primaryColor,
                        )),
                  )
              ],
            ),
          ),
          onTap: () {
            provider.changeLocale(locale);

            Navigator.of(context).maybePop();

            Restart.restartApp();
          },
        );
      },
    );
  }
}
