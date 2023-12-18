import 'package:shared_preferences/shared_preferences.dart';
import 'package:video_gozle/core/shared_prefs_keys.dart';

class AdsStorage {
  final SharedPreferences prefs;

  AdsStorage({required this.prefs});

  DateTime? readLastAdTime() {
    final lastView = prefs.getString(
      SharedPrefKeys.lastAdView,
    );
    return DateTime.tryParse(lastView ?? "");
  }

  Future<void> writeLastAdTime({required DateTime date}) async {
    await prefs.setString(SharedPrefKeys.lastAdView, date.toIso8601String());
  }
}
