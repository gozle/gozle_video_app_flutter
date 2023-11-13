import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:video_gozle/features/global/presentation/widget/ink_wrapper.dart';
import 'package:video_gozle/features/settings/presentation/logic/settings/settings_provider.dart';
import 'package:video_gozle/generated/l10n.dart';

class ChooseThemeDialog {
  static void show(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(S.current.theme),
          titlePadding: EdgeInsets.only(top: 24, left: 24, right: 24, bottom: 12),
          contentPadding: EdgeInsets.only(left: 24, right: 24, bottom: 24),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Divider(),
              ThemeItemWidget(
                themeName: S.current.dark,
                themeMode: ThemeMode.dark,
              ),
              ThemeItemWidget(
                themeName: S.current.light,
                themeMode: ThemeMode.light,
              ),
              ThemeItemWidget(
                themeName: S.current.system,
                themeMode: ThemeMode.system,
              ),
            ],
          ),
        );
      },
    );
  }
}

class ThemeItemWidget extends StatelessWidget {
  final String themeName;
  final ThemeMode themeMode;
  const ThemeItemWidget({super.key, required this.themeName, required this.themeMode});

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
                  themeName,
                  style: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const Spacer(),
                if (provider.themeMode == themeMode)
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
            provider.changeTheme(themeMode);

            Navigator.of(context).maybePop();

            // todo add restart app
          },
        );
      },
    );
  }
}
