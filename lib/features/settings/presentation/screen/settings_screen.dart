import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:video_gozle/core/app_assets.dart';
import 'package:video_gozle/core/constants.dart';
import 'package:video_gozle/features/global/presentation/widget/menu_item_widget.dart';
import 'package:video_gozle/features/settings/presentation/widget/choose_locale_dialog.dart';
import 'package:video_gozle/features/settings/presentation/widget/choose_theme_dialog.dart';
import 'package:video_gozle/generated/l10n.dart';

import '../../../auth/presentation/widget/logout_alert_dialog.dart';

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
        leading: InkWell(
          onTap: ()=> Navigator.pop(context),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: SvgPicture.asset(
              AppAssets.chevronLeft,
              color: Theme.of(context).iconTheme.color,
            ),
          ),
        ),
        centerTitle: false,
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
              const Divider(),
              MenuItemWidget(
                onTap: () {
                  ChooseThemeDialog.show(context);
                },
                label: S.current.theme,
              ),
              const Divider(),
              MenuItemWidget(
                onTap: () {
                  launchUrlString(AppConstants.privacyPolicy);
                },
                label: S.current.history_and_privacy,
              ),
              const Divider(),
              MenuItemWidget(
                onTap: () {
                  LogoutAlerDialog.show(context);
                },
                label: S.current.sign_out,
                textColor: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
