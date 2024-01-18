// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:video_gozle/app_runner.dart';
import 'package:video_gozle/core/constants.dart';
import 'package:video_gozle/generated/l10n.dart';
import 'package:video_gozle/injection.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'fcm.dart' as fcm;
import 'package:permission_handler/permission_handler.dart';

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await Permission.notification.isDenied.then((value) {
    if (value) {
      Permission.notification.request();
    }
  });

  try {
    await fcm.globalInitFcm();
  } catch (e) {
    //ignore
  }

  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await S.load(AppConstants.defaultLocale);

  await setupLocator();

  appRunner();

  FlutterNativeSplash.remove();
}

