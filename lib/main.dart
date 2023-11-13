// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:video_gozle/app_runner.dart';
import 'package:video_gozle/core/constants.dart';
import 'package:video_gozle/generated/l10n.dart';
import 'package:video_gozle/injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await S.load(AppConstants.defaultLocale);

  await setupLocator();

  appRunner();
}
