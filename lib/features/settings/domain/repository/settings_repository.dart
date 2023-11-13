import 'package:flutter/material.dart';

abstract class SettingsRepository {
  Locale readLocale();

  Future<void> writeLocale({required Locale locale});

  ThemeMode readThemeMode();

  Future<void> writeThemeMode({required ThemeMode themeMode});
}
