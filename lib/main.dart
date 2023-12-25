// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:video_gozle/app_runner.dart';
import 'package:video_gozle/core/constants.dart';
import 'package:video_gozle/generated/l10n.dart';
import 'package:video_gozle/injection.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await S.load(AppConstants.defaultLocale);

  await setupLocator();

  appRunner();

  FlutterNativeSplash.remove();
}

