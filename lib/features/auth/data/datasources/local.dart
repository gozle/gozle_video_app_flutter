import 'dart:convert';
import 'dart:developer';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:video_gozle/core/shared_prefs_keys.dart';

import '../../domain/models/user_model.dart';

class AuthStorage {
  final SharedPreferences prefs;

  AuthStorage({required this.prefs});

  Future<User?> readUser() async {
    //
    final userString = prefs.getString(SharedPrefKeys.user);
    final authCookie = readAuthCookie();

    if (userString != null && authCookie != null) {
      final userJson = jsonDecode(userString);
      User user = User.fromJson(userJson);
      if (kDebugMode) {
        log('userName: ${user.username}\ncookie: $authCookie');
      }
      return user;
    } else {
      return null;
    }
  }

  Future<void> writeUser({required User user}) async {
    final userJson = user.toJson();
    final userString = jsonEncode(userJson);
    await prefs.setString(SharedPrefKeys.user, userString);
  }

  Future<void> removeUser() async {
    await prefs.remove(SharedPrefKeys.user);
  }

  String? readAuthCookie() {
    final authCookie = prefs.getString(
      SharedPrefKeys.authCookie,
    );
    return authCookie;
  }

  Future<void> removeAuthCookie() async {
    await prefs.remove(
      SharedPrefKeys.authCookie,
    );
  }

  Future<void> writeAuthCookie({required String authCookie}) async {
    await prefs.setString(
      SharedPrefKeys.authCookie,
      authCookie,
    );
  }
}
