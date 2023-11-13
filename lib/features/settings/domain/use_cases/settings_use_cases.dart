import 'package:flutter/material.dart';
import 'package:video_gozle/features/settings/domain/repository/settings_repository.dart';

class SettingUseCases {
  final SettingsRepository settingsRepository;

  SettingUseCases({required this.settingsRepository});

  Locale readLocale() {
    return settingsRepository.readLocale();
  }

  Future<void> writeLocale({required Locale locale}) {
    return settingsRepository.writeLocale(locale: locale);
  }

  ThemeMode readThemeMode() {
    return settingsRepository.readThemeMode();
  }

  Future<void> writeThemeMode({required ThemeMode themeMode}) {
    return settingsRepository.writeThemeMode(themeMode: themeMode);
  }
}
