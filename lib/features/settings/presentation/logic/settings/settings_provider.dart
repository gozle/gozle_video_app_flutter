import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_gozle/core/constants.dart';
import 'package:video_gozle/core/theme.dart';
import 'package:video_gozle/features/settings/domain/use_cases/settings_use_cases.dart';
import 'package:video_gozle/injection.dart';

class SettingsProvider extends ChangeNotifier {
  SettingsProvider() {
    restoreLocale();
    restoreTheme();
  }

  SettingUseCases get settingsUseCases => locator<SettingUseCases>();

  Locale _locale = AppConstants.defaultLocale;
  ThemeMode _themeMode = ThemeMode.system;

  Locale get locale => _locale;
  ThemeMode get themeMode => _themeMode;

  void restoreLocale() {
    final locale = settingsUseCases.readLocale();
    _locale = locale;
    notifyListeners();
  }

  Future<void> changeLocale(Locale locale) async {
    if (_locale.languageCode != locale.languageCode) {
      _locale = locale;
      settingsUseCases.writeLocale(locale: locale);
      notifyListeners();
    }
  }

  void changeTheme(ThemeMode themeMode) async {
    _themeMode = themeMode;

    await settingsUseCases.writeThemeMode(themeMode: _themeMode);

    notifyListeners();

    if (themeMode == ThemeMode.dark) {
      SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
          systemNavigationBarDividerColor: Colors.transparent,
          systemNavigationBarColor: AppColors.darkBarColor,
          systemNavigationBarIconBrightness: Brightness.dark,
        ),
      );
    } else if (themeMode == ThemeMode.light) {
      SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(
          systemNavigationBarDividerColor: Colors.transparent,
          systemNavigationBarColor: AppColors.lightBarColor,
          systemNavigationBarIconBrightness: Brightness.light,
        ),
      );
    }
  }

  void restoreTheme() {
    _themeMode = settingsUseCases.readThemeMode();

    changeTheme(_themeMode);
  }
}
