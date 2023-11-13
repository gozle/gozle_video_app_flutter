import 'package:shared_preferences/shared_preferences.dart';
import 'package:video_gozle/core/shared_prefs_keys.dart';

class SearchStorage {
  final SharedPreferences prefs;

  SearchStorage({required this.prefs});

  Future<void> saveSearchHistory({required List<String> searchHistory}) async {
    await prefs.setStringList(SharedPrefKeys.searchHistory, searchHistory);
  }

  List<String> restoreSearchHistory() {
    final history = prefs.getStringList(SharedPrefKeys.searchHistory) ?? [];
    return history;
  }
}
