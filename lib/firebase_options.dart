// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAvYLMe4zEgjDxGPbkgj67P_G2E9rFPkdI',
    appId: '1:416069843948:web:260bbdae5681a4180fdec9',
    messagingSenderId: '416069843948',
    projectId: 'gozle-video-72efc',
    authDomain: 'gozle-video-72efc.firebaseapp.com',
    storageBucket: 'gozle-video-72efc.appspot.com',
    measurementId: 'G-QW02BD8WG2',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDI7QTBfnjrEg4uKVQrX3bqRHiRqsu864w',
    appId: '1:416069843948:android:1e0d07383170d09e0fdec9',
    messagingSenderId: '416069843948',
    projectId: 'gozle-video-72efc',
    storageBucket: 'gozle-video-72efc.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCEu1lvs9ujjDjMcGpfMC1EThGRo4wdsmo',
    appId: '1:416069843948:ios:ca04e042327821ed0fdec9',
    messagingSenderId: '416069843948',
    projectId: 'gozle-video-72efc',
    storageBucket: 'gozle-video-72efc.appspot.com',
    iosBundleId: 'tm.videoGozle',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCEu1lvs9ujjDjMcGpfMC1EThGRo4wdsmo',
    appId: '1:416069843948:ios:b3bf94d12ef2689e0fdec9',
    messagingSenderId: '416069843948',
    projectId: 'gozle-video-72efc',
    storageBucket: 'gozle-video-72efc.appspot.com',
    iosBundleId: 'tm.videoGozle.RunnerTests',
  );
}
