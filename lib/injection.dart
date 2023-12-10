import 'dart:async'; // Core Dart packages
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:video_gozle/features/check_updates/data/datasource/check_updates_api_client.dart';
import 'package:video_gozle/features/check_updates/data/repository/check_updates_repository_impl.dart';
import 'package:video_gozle/features/check_updates/domain/repository/check_updates_repository.dart';
import 'package:video_gozle/features/check_updates/domain/user_cases/check_updates_use_cases.dart';
import 'package:video_gozle/features/search/data/data_source/search_api_clienat.dart';
import 'package:video_gozle/features/search/data/data_source/search_storage.dart';
import 'package:video_gozle/features/search/data/repository/seach_repository.dart';
import 'package:video_gozle/features/search/domain/repository/search_repository.dart';
import 'package:video_gozle/features/search/domain/use_cases/seach_use_cases.dart';
import 'package:video_gozle/features/subscriptions/data/data_source/subscriptions_api_client.dart';
import 'package:video_gozle/features/subscriptions/data/repository/subscriptions_repository_impl.dart';
import 'package:video_gozle/features/subscriptions/domain/use_cases/subscription_use_cases.dart';
import 'package:video_gozle/features/subscriptions/domain/use_cases/subscriptions_repository.dart';
import 'package:video_gozle/generated/l10n.dart';

import 'package:video_gozle/core/rest_api_urls.dart';

import 'package:video_gozle/features/auth/data/datasources/local.dart'; // Auth Module
import 'package:video_gozle/features/auth/data/datasources/remote.dart';
import 'package:video_gozle/features/auth/data/repository/auth_repository_impl.dart';
import 'package:video_gozle/features/auth/domain/repository/auth_repository.dart';
import 'package:video_gozle/features/auth/domain/use_cases/auth_use_cases.dart';

import 'package:video_gozle/features/channel/data/data_source/channel_api_client.dart'; // Channel Module
import 'package:video_gozle/features/channel/data/repository/channel_repository_impl.dart';
import 'package:video_gozle/features/channel/domain/repository/channel_repository.dart';
import 'package:video_gozle/features/channel/domain/use_cases/channel_use_cases.dart';

import 'package:video_gozle/features/home/data/datasources/remote.dart'; // Home Module
import 'package:video_gozle/features/home/data/repository/home_repository_impl.dart';
import 'package:video_gozle/features/home/domain/repository/home_repository_interface.dart';
import 'package:video_gozle/features/home/domain/use_cases/home_use_case.dart';

import 'package:video_gozle/features/library/data/datasource/library_api_client.dart'; // Library Module
import 'package:video_gozle/features/library/data/repository/library_repository_impl.dart';
import 'package:video_gozle/features/library/domain/repository/history_repository.dart';
import 'package:video_gozle/features/library/domain/use_cases/library_use_cases.dart';

import 'package:video_gozle/features/settings/data/datasource/settings_storage.dart'; // Settings Module
import 'package:video_gozle/features/settings/data/repository/settings_repository_impl.dart';
import 'package:video_gozle/features/settings/domain/repository/settings_repository.dart';
import 'package:video_gozle/features/settings/domain/use_cases/settings_use_cases.dart';

import 'package:video_gozle/features/video/data/datasource/video_api_client.dart'; // Video Module
import 'package:video_gozle/features/video/data/repository/video_repository_impl.dart';
import 'package:video_gozle/features/video/domain/repository/video_repository.dart';
import 'package:video_gozle/features/video/domain/usecases/video_use_cases.dart';

final locator = GetIt.instance; // Service locator

Future<void> setupLocator() async {
  // INITING STORAGE
  final prefs = await SharedPreferences.getInstance();

  // Auth
  locator.registerFactory(() => AuthUseCases(authRepository: locator()));
  locator.registerFactory<AuthRepository>(() => AuthRepositoryImpl(
        authApiClient: locator(),
        authStorage: locator(),
      ));
  locator.registerFactory(() => AuthStorage(prefs: prefs));

  locator.registerFactory<AuthApiClient>(() {
    final Dio dio = prepareApiClient(RestApiUrls.baseAuthUrl);
    return AuthApiClient(dio: dio);
  });

  // Home
  locator.registerFactory(() => HomeUseCases(homeRepository: locator()));
  locator.registerFactory<HomeRepository>(
      () => HomeRepositoryImpl(homeApiClient: locator()));
  locator.registerFactory<HomeApiClient>(() {
    final Dio dio = prepareApiClient(RestApiUrls.baseUrl);
    return HomeApiClient(dio: dio);
  });

  // Video
  locator.registerFactory(() => VideoUseCases(videoRepository: locator()));
  locator.registerFactory<VideoRepository>(
      () => VideoRepositoryImpl(videoApiClient: locator()));
  locator.registerFactory<VideoApiClient>(() {
    final Dio dio = prepareApiClient(RestApiUrls.baseUrl);
    final Dio dioV1 = prepareApiClient(RestApiUrls.baseUrlV1);
    return VideoApiClient(
      dio: dio,
      dioV1: dioV1,
    );
  });

  // Library
  locator.registerFactory(() => LibraryUseCases(libraryRepository: locator()));
  locator.registerFactory<LibraryRepository>(
      () => LibraryRepositoryImpl(libraryApiClient: locator()));
  locator.registerFactory<LibraryApiClient>(() {
    final Dio dio = prepareApiClient(RestApiUrls.baseUrl);
    return LibraryApiClient(dio: dio);
  });

  // Settings
  locator.registerFactory(() => SettingUseCases(settingsRepository: locator()));
  locator.registerFactory<SettingsRepository>(
      () => SettingsRepositoryImpl(settingsStorage: locator()));
  locator.registerFactory(() => SettingsStorage(prefs: prefs));

  // Channel
  locator.registerFactory(() => ChannelUseCases(channelRepository: locator()));
  locator.registerFactory<ChannelRepository>(
      () => ChannelRepositoryImpl(channelApiClient: locator()));
  locator.registerFactory<ChannelApiClient>(() {
    final Dio dio = prepareApiClient(RestApiUrls.baseUrl);
    return ChannelApiClient(dio: dio);
  });

  // Subscriptions
  locator.registerFactory(
      () => SubscriptionsUseCases(subscriptionsRepository: locator()));
  locator.registerFactory<SubscriptionsRepository>(
      () => SubscriptionsRepositoryImpl(subscriptionsApiClient: locator()));
  locator.registerFactory<SubscriptionsApiClient>(() {
    final Dio dio = prepareApiClient(RestApiUrls.baseUrl);
    return SubscriptionsApiClient(dio: dio);
  });
  // Subscriptions
  locator.registerFactory(
      () => CheckUpdatesUseCases(checkUpdatesRepository: locator()));
  locator.registerFactory<CheckUpdatesRepository>(
      () => CheckUpdatesRepositoryImpl(checkUpdatesApiClient: locator()));
  locator.registerFactory<CheckUpdatesApiClient>(() {
    final Dio dio = prepareApiClient(RestApiUrls.baseUrl);
    return CheckUpdatesApiClient(dio: dio);
  });

  // Search
  locator.registerFactory(() => SearchUseCases(searchRepository: locator()));
  locator.registerFactory<SearchRepository>(() => SearchRepositoryImpl(
        searchApiClient: locator(),
        searchStorage: locator(),
      ));
  locator.registerFactory<SearchStorage>(() => SearchStorage(prefs: prefs));

  locator.registerFactory<SearchApiClient>(() {
    final Dio dio = prepareApiClient(RestApiUrls.baseUrl);
    return SearchApiClient(dio: dio);
  });
}

// Generic function to register API Clients
Dio prepareApiClient(String baseUrl) {
  final cookie = locator<AuthStorage>().readAuthCookie();
  final lang = S.current.lang;
  final dio = _createDio(baseUrl, cookie, lang);
  return dio;
}

// Function to create Dio instance
Dio _createDio(String baseUrl, String? cookie, String lang) {
  final dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      headers: {
        "Cookie": cookie,
      },
      queryParameters: {
        "lang": lang,
      },
      connectTimeout: const Duration(seconds: 5),
      receiveTimeout: const Duration(seconds: 5),
    ),
  );

  dio.interceptors.add(
    PrettyDioLogger(
      requestHeader: false,
      requestBody: false,
      responseBody: false,
      responseHeader: false,
      error: true,
      logPrint: (object) => log('$object'),
      maxWidth: 80,
    ),
  );

  return dio;
}
