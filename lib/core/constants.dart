import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppConstants {
  // INTL
  static const Locale defaultLocale = russianLocale;

  static const Locale russianLocale = Locale('ru');
  static const Locale englishLocale = Locale('en');
  static const Locale turkmenLocale = Locale('tk');

  static const List<Locale> supportedLocales = [
    russianLocale,
    englishLocale,
    turkmenLocale,
  ];

  static const String appStoreLink = '';

  static const String playMarketLink = 'https://play.google.com/store/apps/details?id=tm.gozle.video';

  static const String supportLink = 'https://gozle.com.tm/ru/contact-us';

  static const String orderAdvertisingLink = 'https://ads.gozle.com.tm';

  static const String privacyPolicy = 'https://video.gozle.com.tm/privacy-policy';

  static const String accountSettins = 'https://id.gozle.com.tm/account';

  static const int amount = 15;

  static const int iosAppVersion = 3;

  static const int androidAppVersion = 3;

  static String getStoreLink() {
    if (Platform.isIOS) {
      return appStoreLink;
    } else {
      return playMarketLink;
    }
  }
}
