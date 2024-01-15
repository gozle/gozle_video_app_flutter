// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `en`
  String get lang {
    return Intl.message(
      'en',
      name: 'lang',
      desc: '',
      args: [],
    );
  }

  /// `More`
  String get more {
    return Intl.message(
      'More',
      name: 'more',
      desc: '',
      args: [],
    );
  }

  /// `Hide`
  String get hide {
    return Intl.message(
      'Hide',
      name: 'hide',
      desc: '',
      args: [],
    );
  }

  /// `Views`
  String get views {
    return Intl.message(
      'Views',
      name: 'views',
      desc: '',
      args: [],
    );
  }

  /// `Subscribe`
  String get subscribe {
    return Intl.message(
      'Subscribe',
      name: 'subscribe',
      desc: '',
      args: [],
    );
  }

  /// `Likes`
  String get likes {
    return Intl.message(
      'Likes',
      name: 'likes',
      desc: '',
      args: [],
    );
  }

  /// `Video`
  String get video {
    return Intl.message(
      'Video',
      name: 'video',
      desc: '',
      args: [],
    );
  }

  /// `Gozle Video`
  String get gozle_video {
    return Intl.message(
      'Gozle Video',
      name: 'gozle_video',
      desc: '',
      args: [],
    );
  }

  /// `Channels`
  String get channels {
    return Intl.message(
      'Channels',
      name: 'channels',
      desc: '',
      args: [],
    );
  }

  /// `Popular`
  String get popular {
    return Intl.message(
      'Popular',
      name: 'popular',
      desc: '',
      args: [],
    );
  }

  /// `Last`
  String get last {
    return Intl.message(
      'Last',
      name: 'last',
      desc: '',
      args: [],
    );
  }

  /// `Music`
  String get music {
    return Intl.message(
      'Music',
      name: 'music',
      desc: '',
      args: [],
    );
  }

  /// `Online TV`
  String get onlite_tv {
    return Intl.message(
      'Online TV',
      name: 'onlite_tv',
      desc: '',
      args: [],
    );
  }

  /// `News`
  String get news {
    return Intl.message(
      'News',
      name: 'news',
      desc: '',
      args: [],
    );
  }

  /// `Video search`
  String get search_videos {
    return Intl.message(
      'Video search',
      name: 'search_videos',
      desc: '',
      args: [],
    );
  }

  /// `Popular channels`
  String get popular_channels {
    return Intl.message(
      'Popular channels',
      name: 'popular_channels',
      desc: '',
      args: [],
    );
  }

  /// `Channel search`
  String get search_channels {
    return Intl.message(
      'Channel search',
      name: 'search_channels',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Main`
  String get main_page {
    return Intl.message(
      'Main',
      name: 'main_page',
      desc: '',
      args: [],
    );
  }

  /// `Recently uploaded`
  String get recently_uploaded {
    return Intl.message(
      'Recently uploaded',
      name: 'recently_uploaded',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong`
  String get something_went_wrong {
    return Intl.message(
      'Something went wrong',
      name: 'something_went_wrong',
      desc: '',
      args: [],
    );
  }

  /// `Retry`
  String get retry {
    return Intl.message(
      'Retry',
      name: 'retry',
      desc: '',
      args: [],
    );
  }

  /// `Related Videos`
  String get related_videos {
    return Intl.message(
      'Related Videos',
      name: 'related_videos',
      desc: '',
      args: [],
    );
  }

  /// `Autoplay`
  String get autoplay {
    return Intl.message(
      'Autoplay',
      name: 'autoplay',
      desc: '',
      args: [],
    );
  }

  /// `Go`
  String get go {
    return Intl.message(
      'Go',
      name: 'go',
      desc: '',
      args: [],
    );
  }

  /// `Quality`
  String get quality {
    return Intl.message(
      'Quality',
      name: 'quality',
      desc: '',
      args: [],
    );
  }

  /// `Repeat playback`
  String get repeat_playback {
    return Intl.message(
      'Repeat playback',
      name: 'repeat_playback',
      desc: '',
      args: [],
    );
  }

  /// `Playback speed`
  String get playback_speed {
    return Intl.message(
      'Playback speed',
      name: 'playback_speed',
      desc: '',
      args: [],
    );
  }

  /// `Auto`
  String get auto {
    return Intl.message(
      'Auto',
      name: 'auto',
      desc: '',
      args: [],
    );
  }

  /// `recommended`
  String get recommended {
    return Intl.message(
      'recommended',
      name: 'recommended',
      desc: '',
      args: [],
    );
  }

  /// `Video playback conditions are taken`
  String get playback_conditions {
    return Intl.message(
      'Video playback conditions are taken',
      name: 'playback_conditions',
      desc: '',
      args: [],
    );
  }

  /// `Enabled`
  String get enabled {
    return Intl.message(
      'Enabled',
      name: 'enabled',
      desc: '',
      args: [],
    );
  }

  /// `Disabled`
  String get disabled {
    return Intl.message(
      'Disabled',
      name: 'disabled',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Common`
  String get common_playback {
    return Intl.message(
      'Common',
      name: 'common_playback',
      desc: '',
      args: [],
    );
  }

  /// `Сheck your internet connection`
  String get check_internet_connection {
    return Intl.message(
      'Сheck your internet connection',
      name: 'check_internet_connection',
      desc: '',
      args: [],
    );
  }

  /// `Nothing was found for the query "{query}"`
  String query_not_found(String query) {
    return Intl.message(
      'Nothing was found for the query "$query"',
      name: 'query_not_found',
      desc: '',
      args: [query],
    );
  }

  /// `Color schemes`
  String get colors_scheme {
    return Intl.message(
      'Color schemes',
      name: 'colors_scheme',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `About us`
  String get about_us {
    return Intl.message(
      'About us',
      name: 'about_us',
      desc: '',
      args: [],
    );
  }

  /// `Back to homepage`
  String get back_home {
    return Intl.message(
      'Back to homepage',
      name: 'back_home',
      desc: '',
      args: [],
    );
  }

  /// `Video will start in {seconds}`
  String video_starts_at(String seconds) {
    return Intl.message(
      'Video will start in $seconds',
      name: 'video_starts_at',
      desc: '',
      args: [seconds],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Skip in {seconds}`
  String skip_at(String seconds) {
    return Intl.message(
      'Skip in $seconds',
      name: 'skip_at',
      desc: '',
      args: [seconds],
    );
  }

  /// `Play`
  String get play {
    return Intl.message(
      'Play',
      name: 'play',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get description {
    return Intl.message(
      'Description',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `Options`
  String get options {
    return Intl.message(
      'Options',
      name: 'options',
      desc: '',
      args: [],
    );
  }

  /// `Change language`
  String get change_language {
    return Intl.message(
      'Change language',
      name: 'change_language',
      desc: '',
      args: [],
    );
  }

  /// `A new version of the app is available!`
  String get new_version {
    return Intl.message(
      'A new version of the app is available!',
      name: 'new_version',
      desc: '',
      args: [],
    );
  }

  /// `Update the app to get new features.`
  String get update_app {
    return Intl.message(
      'Update the app to get new features.',
      name: 'update_app',
      desc: '',
      args: [],
    );
  }

  /// `Update`
  String get update {
    return Intl.message(
      'Update',
      name: 'update',
      desc: '',
      args: [],
    );
  }

  /// `Subscriptions`
  String get subscriptions {
    return Intl.message(
      'Subscriptions',
      name: 'subscriptions',
      desc: '',
      args: [],
    );
  }

  /// `Library`
  String get library {
    return Intl.message(
      'Library',
      name: 'library',
      desc: '',
      args: [],
    );
  }

  /// `Watch Later`
  String get watch_later {
    return Intl.message(
      'Watch Later',
      name: 'watch_later',
      desc: '',
      args: [],
    );
  }

  /// `Download Video`
  String get download_video {
    return Intl.message(
      'Download Video',
      name: 'download_video',
      desc: '',
      args: [],
    );
  }

  /// `Share`
  String get share {
    return Intl.message(
      'Share',
      name: 'share',
      desc: '',
      args: [],
    );
  }

  /// `Report`
  String get report {
    return Intl.message(
      'Report',
      name: 'report',
      desc: '',
      args: [],
    );
  }

  /// `Manage Gozle Account`
  String get manage_gozle_account {
    return Intl.message(
      'Manage Gozle Account',
      name: 'manage_gozle_account',
      desc: '',
      args: [],
    );
  }

  /// `Account`
  String get account {
    return Intl.message(
      'Account',
      name: 'account',
      desc: '',
      args: [],
    );
  }

  /// `Purchases and Subscriptions`
  String get purchases_subscriptions {
    return Intl.message(
      'Purchases and Subscriptions',
      name: 'purchases_subscriptions',
      desc: '',
      args: [],
    );
  }

  /// `Help`
  String get help {
    return Intl.message(
      'Help',
      name: 'help',
      desc: '',
      args: [],
    );
  }

  /// `Leave Review`
  String get leave_review {
    return Intl.message(
      'Leave Review',
      name: 'leave_review',
      desc: '',
      args: [],
    );
  }

  /// `Sign Out`
  String get sign_out {
    return Intl.message(
      'Sign Out',
      name: 'sign_out',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to sign out of your Gozle account?`
  String get confirm_sign_out {
    return Intl.message(
      'Are you sure you want to sign out of your Gozle account?',
      name: 'confirm_sign_out',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Theme`
  String get theme {
    return Intl.message(
      'Theme',
      name: 'theme',
      desc: '',
      args: [],
    );
  }

  /// `Purchases and Subscriptions`
  String get purchases_and_subscriptions {
    return Intl.message(
      'Purchases and Subscriptions',
      name: 'purchases_and_subscriptions',
      desc: '',
      args: [],
    );
  }

  /// `History and Privacy`
  String get history_and_privacy {
    return Intl.message(
      'History and Privacy',
      name: 'history_and_privacy',
      desc: '',
      args: [],
    );
  }

  /// `System`
  String get system {
    return Intl.message(
      'System',
      name: 'system',
      desc: '',
      args: [],
    );
  }

  /// `Dark`
  String get dark {
    return Intl.message(
      'Dark',
      name: 'dark',
      desc: '',
      args: [],
    );
  }

  /// `Light`
  String get light {
    return Intl.message(
      'Light',
      name: 'light',
      desc: '',
      args: [],
    );
  }

  /// `Release to load more`
  String get can_loading_text {
    return Intl.message(
      'Release to load more',
      name: 'can_loading_text',
      desc: '',
      args: [],
    );
  }

  /// `Release to refresh`
  String get can_refresh_text {
    return Intl.message(
      'Release to refresh',
      name: 'can_refresh_text',
      desc: '',
      args: [],
    );
  }

  /// `Release to enter secondfloor`
  String get can_two_level_text {
    return Intl.message(
      'Release to enter secondfloor',
      name: 'can_two_level_text',
      desc: '',
      args: [],
    );
  }

  /// `Pull up Load more`
  String get idle_loading_text {
    return Intl.message(
      'Pull up Load more',
      name: 'idle_loading_text',
      desc: '',
      args: [],
    );
  }

  /// `Pull down Refresh`
  String get idle_refresh_text {
    return Intl.message(
      'Pull down Refresh',
      name: 'idle_refresh_text',
      desc: '',
      args: [],
    );
  }

  /// `Load Failed`
  String get load_failed_text {
    return Intl.message(
      'Load Failed',
      name: 'load_failed_text',
      desc: '',
      args: [],
    );
  }

  /// `Loading…`
  String get loading_text {
    return Intl.message(
      'Loading…',
      name: 'loading_text',
      desc: '',
      args: [],
    );
  }

  /// `No more data`
  String get no_more_text {
    return Intl.message(
      'No more data',
      name: 'no_more_text',
      desc: '',
      args: [],
    );
  }

  /// `Refresh completed`
  String get refresh_complete_text {
    return Intl.message(
      'Refresh completed',
      name: 'refresh_complete_text',
      desc: '',
      args: [],
    );
  }

  /// `Refresh failed`
  String get refresh_failed_text {
    return Intl.message(
      'Refresh failed',
      name: 'refresh_failed_text',
      desc: '',
      args: [],
    );
  }

  /// `Refreshing…`
  String get refreshing_text {
    return Intl.message(
      'Refreshing…',
      name: 'refreshing_text',
      desc: '',
      args: [],
    );
  }

  /// `Log in or register with Gozle ID`
  String get login_or_register_with_gozle_id {
    return Intl.message(
      'Log in or register with Gozle ID',
      name: 'login_or_register_with_gozle_id',
      desc: '',
      args: [],
    );
  }

  /// `Why do you need a Gozle ID account?`
  String get why_need_gozle_id_account {
    return Intl.message(
      'Why do you need a Gozle ID account?',
      name: 'why_need_gozle_id_account',
      desc: '',
      args: [],
    );
  }

  /// `History`
  String get history {
    return Intl.message(
      'History',
      name: 'history',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get all {
    return Intl.message(
      'All',
      name: 'all',
      desc: '',
      args: [],
    );
  }

  /// `Channels you may like`
  String get channels_you_may_like {
    return Intl.message(
      'Channels you may like',
      name: 'channels_you_may_like',
      desc: '',
      args: [],
    );
  }

  /// `Subscribe and watch new interesting videos.`
  String get subscribe_and_watch_new_interesting_videos {
    return Intl.message(
      'Subscribe and watch new interesting videos.',
      name: 'subscribe_and_watch_new_interesting_videos',
      desc: '',
      args: [],
    );
  }

  /// `Subscribed`
  String get subscribed {
    return Intl.message(
      'Subscribed',
      name: 'subscribed',
      desc: '',
      args: [],
    );
  }

  /// `Download`
  String get download {
    return Intl.message(
      'Download',
      name: 'download',
      desc: '',
      args: [],
    );
  }

  /// `Replay`
  String get replay {
    return Intl.message(
      'Replay',
      name: 'replay',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Videos`
  String get videos {
    return Intl.message(
      'Videos',
      name: 'videos',
      desc: '',
      args: [],
    );
  }

  /// `About Channel`
  String get about_channel {
    return Intl.message(
      'About Channel',
      name: 'about_channel',
      desc: '',
      args: [],
    );
  }

  /// `Playlists`
  String get playlists {
    return Intl.message(
      'Playlists',
      name: 'playlists',
      desc: '',
      args: [],
    );
  }

  /// `Latest`
  String get latest {
    return Intl.message(
      'Latest',
      name: 'latest',
      desc: '',
      args: [],
    );
  }

  /// `Old`
  String get old {
    return Intl.message(
      'Old',
      name: 'old',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Subtitles`
  String get subtitles {
    return Intl.message(
      'Subtitles',
      name: 'subtitles',
      desc: '',
      args: [],
    );
  }

  /// `Screen Lock`
  String get screen_lock {
    return Intl.message(
      'Screen Lock',
      name: 'screen_lock',
      desc: '',
      args: [],
    );
  }

  /// `Video will be excluded from your preferences`
  String get exclude_video_from_preferences {
    return Intl.message(
      'Video will be excluded from your preferences',
      name: 'exclude_video_from_preferences',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to Gozle Video !`
  String get welcome_to_gozle_video {
    return Intl.message(
      'Welcome to Gozle Video !',
      name: 'welcome_to_gozle_video',
      desc: '',
      args: [],
    );
  }

  /// `Service for learning and entertainment.`
  String get learning_and_entertainment_service {
    return Intl.message(
      'Service for learning and entertainment.',
      name: 'learning_and_entertainment_service',
      desc: '',
      args: [],
    );
  }

  /// `Sign in`
  String get sign_in {
    return Intl.message(
      'Sign in',
      name: 'sign_in',
      desc: '',
      args: [],
    );
  }

  /// `Sign in to Gozle Account`
  String get sign_in_gozle_account {
    return Intl.message(
      'Sign in to Gozle Account',
      name: 'sign_in_gozle_account',
      desc: '',
      args: [],
    );
  }

  /// `Then sign in to  Gozle Account`
  String get then_sign_in_gozle_account {
    return Intl.message(
      'Then sign in to  Gozle Account',
      name: 'then_sign_in_gozle_account',
      desc: '',
      args: [],
    );
  }

  /// `Sign in to unlock subscribing, liking, and personalized history features. Without an account, you miss out on these essential interactions and a tailored experience.`
  String get without_sign_missing_features {
    return Intl.message(
      'Sign in to unlock subscribing, liking, and personalized history features. Without an account, you miss out on these essential interactions and a tailored experience.',
      name: 'without_sign_missing_features',
      desc: '',
      args: [],
    );
  }

  /// `Server Error`
  String get server_error {
    return Intl.message(
      'Server Error',
      name: 'server_error',
      desc: '',
      args: [],
    );
  }

  /// `We are experiencing some issues with your internet connection`
  String get internet_connection_issues {
    return Intl.message(
      'We are experiencing some issues with your internet connection',
      name: 'internet_connection_issues',
      desc: '',
      args: [],
    );
  }

  /// `Authentication Failure`
  String get authentication_failure {
    return Intl.message(
      'Authentication Failure',
      name: 'authentication_failure',
      desc: '',
      args: [],
    );
  }

  /// `404 NOT FOUND`
  String get not_found_error {
    return Intl.message(
      '404 NOT FOUND',
      name: 'not_found_error',
      desc: '',
      args: [],
    );
  }

  /// `An unexpected issue occurred. Please try again`
  String get undefined_issue {
    return Intl.message(
      'An unexpected issue occurred. Please try again',
      name: 'undefined_issue',
      desc: '',
      args: [],
    );
  }

  /// `install`
  String get install {
    return Intl.message(
      'install',
      name: 'install',
      desc: '',
      args: [],
    );
  }

  /// `Want to subscribe to this account?`
  String get want_to_subscribe {
    return Intl.message(
      'Want to subscribe to this account?',
      name: 'want_to_subscribe',
      desc: '',
      args: [],
    );
  }

  /// `Did you like the video?`
  String get want_to_like {
    return Intl.message(
      'Did you like the video?',
      name: 'want_to_like',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru'),
      Locale.fromSubtags(languageCode: 'tk'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
