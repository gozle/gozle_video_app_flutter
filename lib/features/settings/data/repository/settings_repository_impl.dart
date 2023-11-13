// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:video_gozle/core/constants.dart';
import 'package:video_gozle/features/settings/data/datasource/settings_storage.dart';
import '../../domain/repository/settings_repository.dart';

class SettingsRepositoryImpl implements SettingsRepository {
  final SettingsStorage settingsStorage;

  SettingsRepositoryImpl({required this.settingsStorage});

  @override
  Locale readLocale() {
    var langCode = settingsStorage.readLocale();

    return switch (langCode) {
      'tk' => AppConstants.turkmenLocale,
      'ru' => AppConstants.russianLocale,
      'en' => AppConstants.englishLocale,
      _ => AppConstants.defaultLocale
    };
  }

  @override
  Future<void> writeLocale({required Locale locale}) async =>
      await settingsStorage.writeLocale(languageCode: locale.languageCode);

  @override
  Future<void> writeThemeMode({required ThemeMode themeMode}) async =>
      await settingsStorage.writeTheme(themeCode: themeMode.name);

  @override
  ThemeMode readThemeMode() {
    final String themeModeName = settingsStorage.readTheme() ?? '';
    // Convert to enum
    ThemeMode? themeMode = ThemeMode.values.firstWhereOrNull((name) => name.name == themeModeName);

    return themeMode ??= ThemeMode.system;
  }
}
