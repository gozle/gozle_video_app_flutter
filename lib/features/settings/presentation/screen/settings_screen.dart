import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:video_gozle/core/constants.dart';
import 'package:video_gozle/features/global/presentation/widget/menu_item_widget.dart';
import 'package:video_gozle/features/settings/presentation/widget/choose_locale_dialog.dart';
import 'package:video_gozle/features/settings/presentation/widget/choose_theme_dialog.dart';
import 'package:video_gozle/generated/l10n.dart';

class SettingsScreen extends StatefulWidget {
  static String routeName = 'settings';
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Theme.of(context).iconTheme.color,
        ),
        title: Text(S.current.settings),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
          child: Column(
            children: [
              MenuItemWidget(
                onTap: () {
                  ChooseLocaleDialog.show(context);
                },
                label: S.current.language,
              ),
              MenuItemWidget(
                onTap: () {
                  ChooseThemeDialog.show(context);
                },
                label: S.current.theme,
              ),
              MenuItemWidget(
                onTap: () {
                  launchUrlString(AppConstants.privacyPolicy);
                },
                label: S.current.history_and_privacy,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
