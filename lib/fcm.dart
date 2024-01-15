import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';


final StreamController<String?> selectNotificationStream = StreamController<String?>.broadcast();

String? selectedNotificationPayload() => _selectedNotificationPayload;

String? _selectedNotificationPayload;

int _LongToInt(int i) => (i & 0x7fffffff) - (i & 0x80000000);

int _genNotificationId() => _LongToInt(DateTime.now().millisecondsSinceEpoch);

final _localNotifications = FlutterLocalNotificationsPlugin();

const AndroidNotificationChannel _notificationChannel = AndroidNotificationChannel(
  'gozle_video_app',
  'Gozle Video',
  description: 'Gozle Video',
  importance: Importance.high,
  enableVibration: true,
  playSound: true,
);

@pragma('vm:entry-point')
void notificationTapBackground(NotificationResponse notificationResponse) {
  //no-op
}

/// Define a top-level named handler which background/terminated messages will
/// call.
///
/// To verify things are working, check out the native platform logs.
Future<void> fcmOnBackgroundMessageReceived(RemoteMessage message) async {
  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.
  //await Firebase.initializeApp();

  return _handleFcmMessage(message);
}

// String _encodePayloadFromRemoteMessage(RemoteMessage message) {
//   return jsonEncode(<String, dynamic>{
//     'order_id': message.data['order_id'],
//   });
// }

Future<void> globalInitFcm() async {
  WidgetsFlutterBinding.ensureInitialized();

  final appLaunchDetails = await _localNotifications.getNotificationAppLaunchDetails();
  if (appLaunchDetails?.didNotificationLaunchApp ?? false) {
    _selectedNotificationPayload = appLaunchDetails!.notificationResponse?.payload;
  }

  /// Create an Android Notification Channel.
  ///
  /// We use this channel in the `AndroidManifest.xml` file to override the
  /// default FCM channel to enable heads up notifications.
  await _localNotifications
      .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(_notificationChannel);

  const initSettings = InitializationSettings(
    android: AndroidInitializationSettings('ic_launcher_foreground'),
    iOS: DarwinInitializationSettings(),
  );

  await _localNotifications.initialize(
    initSettings,
    onDidReceiveNotificationResponse: (details) {
      switch (details.notificationResponseType) {
        case NotificationResponseType.selectedNotification:
          selectNotificationStream.add(details.payload);
          break;
        case NotificationResponseType.selectedNotificationAction:
          break;
      }
    },
    onDidReceiveBackgroundNotificationResponse: notificationTapBackground,
  );

  try {
    await _configureFcm();
  } catch (e) {
    //ignore
  }

  try {
    //TODO: if called without internet on first launch throws platform exception and not return result, cause to infinity await
    // ignore: unawaited_futures
    /*await*/ _subscribeToGlobalTopics();
  } catch (e) {
    //ignore
  }
}

Future<void> requestPushPermissions() async {
  //Fcm:
  // Update the iOS foreground notification presentation options to allow
  // heads up notifications.
  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true,
    sound: true,
  );
  if (Platform.isIOS) {
    await FirebaseMessaging.instance.requestPermission();
  }

  if (Platform.isIOS) {
    await _localNotifications
        .resolvePlatformSpecificImplementation<IOSFlutterLocalNotificationsPlugin>()
        ?.requestPermissions(
          alert: true,
          badge: true,
          sound: true,
        );
  } else if (Platform.isAndroid) {
    //Request permission (API 33+)
    await _localNotifications
        .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
        ?.requestNotificationsPermission();
  }
}

Future<String?> getDeviceToken() {
  return FirebaseMessaging.instance.getToken();
}

Future<void> forceRefreshDeviceToken() async {
  await FirebaseMessaging.instance.getToken();
  await FirebaseMessaging.instance.deleteToken();
  await FirebaseMessaging.instance.getToken();
}

Future<void> _configureFcm() async {
  await Firebase.initializeApp();

  // Set the background messaging handler early on, as a named top-level function
  FirebaseMessaging.onBackgroundMessage(fcmOnBackgroundMessageReceived);

  try {
    final message = await FirebaseMessaging.instance.getInitialMessage();
    if (message != null && message.data.isNotEmpty) {
      // _selectedNotificationPayload = _encodePayloadFromRemoteMessage(message);
    }
  } catch (e) {
    //ignored
  }

  FirebaseMessaging.onMessage.listen(_handleFcmMessage);
  FirebaseMessaging.onMessageOpenedApp.listen((message) {
    if (message.data.isNotEmpty) {
      // selectNotificationStream.add(_encodePayloadFromRemoteMessage(message));
    }
  });
}

Future<void> _subscribeToGlobalTopics() /*async*/ {
  return FirebaseMessaging.instance.subscribeToTopic('announcement');
  return Future.value();
}

Future<void> _handleFcmMessage(RemoteMessage message) async {
  final String title = message.notification?.title ?? '';
  final String body = message.notification?.body ?? '';
  final String? photo =
      message.notification?.android?.imageUrl ?? message.notification?.apple?.imageUrl;

  // final String payload = _encodePayloadFromRemoteMessage(message);

  String? bigPicturePath;
  if (photo != null) {
    try {
      Future<String> downloadAndSaveFile(String url, String fileName) async {
        final directory = await getApplicationDocumentsDirectory();
        final String filePath = '${directory.path}/$fileName';
        final http.Response response = await http.get(Uri.parse(url));
        final file = File(filePath);
        await file.writeAsBytes(response.bodyBytes);
        return filePath;
      }

      bigPicturePath = await downloadAndSaveFile(photo, photo.hashCode.toString());
    } catch (e) {
      //no-op
    }
  }
  StyleInformation? styleInformation;
  if (bigPicturePath != null) {
    styleInformation = BigPictureStyleInformation(
      FilePathAndroidBitmap(bigPicturePath),
      hideExpandedLargeIcon: true,
      contentTitle: title,
      htmlFormatContentTitle: true,
      summaryText: body,
      htmlFormatSummaryText: true,
    );
  } else {
    styleInformation = BigTextStyleInformation(
      body,
      contentTitle: title,
      htmlFormatBigText: true,
      htmlFormatContentTitle: true,
      htmlFormatSummaryText: true,
    );
  }

  final platformChannelSpecifics = NotificationDetails(
    android: AndroidNotificationDetails(
      _notificationChannel.id,
      _notificationChannel.name,
      channelDescription: _notificationChannel.description,
      icon: 'ic_launcher_foreground',
      //largeIcon: FilePathAndroidBitmap(largeIconPath),
      styleInformation: styleInformation,
      visibility: NotificationVisibility.public,
      importance: Importance.max,
      priority: Priority.high,
    ),
    iOS: const DarwinNotificationDetails(),
  );

  // ignore: unawaited_futures
  _localNotifications.show(
    message.messageId?.hashCode ?? _genNotificationId(),
    title,
    body,
    platformChannelSpecifics,
    // payload: payload,
  );
}

/* Handlers */
Future<void> handleNotificationPayload(BuildContext context, String payload) async {
  if (payload.isEmpty) {
    return;
  }

  final messageData = jsonDecode(payload) as Map<String, dynamic>;

  final int orderId = int.tryParse(messageData['order_id'].toString()) ?? -1;

  if (orderId != -1) {
    _showOrder(context, orderId);
    return;
  }
}

void _showOrder(BuildContext context, int orderId) {
  /*final rootContext = rootNavigatorKey.currentContext;
  if (rootContext != null) {*/
    // navigateToScreen(context, OrderDetailsScreen.byId(orderId: orderId));
  /*}*/
}
