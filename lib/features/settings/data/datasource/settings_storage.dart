import 'package:shared_preferences/shared_preferences.dart';
import 'package:video_gozle/core/shared_prefs_keys.dart';

class SettingsStorage {
  final SharedPreferences prefs;

  SettingsStorage({required this.prefs});

  // SETTINGS

  String? readLocale() {
    return prefs.getString(SharedPrefKeys.languageCode);
  }

  Future<void> writeLocale({required String languageCode}) async =>
      prefs.setString(SharedPrefKeys.languageCode, languageCode);

  Future<void> writeTheme({required String themeCode}) async =>
      prefs.setString(SharedPrefKeys.themeCode, themeCode);

  String? readTheme() => prefs.getString(SharedPrefKeys.themeCode);
}
