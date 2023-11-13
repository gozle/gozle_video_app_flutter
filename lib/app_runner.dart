// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:turkmen_localization_support/turkmen_localization_support.dart';
import 'package:video_gozle/core/theme.dart';
import 'package:video_gozle/features/auth/presentation/logic/user_bloc/user_bloc.dart';
import 'package:video_gozle/features/auth/presentation/screen/login_screen.dart';
import 'package:video_gozle/features/home/presentation/logic/video_category_cubit/video_category_cubit.dart';
import 'package:video_gozle/features/home/presentation/logic/video_list_bloc/video_list_bloc.dart';
import 'package:video_gozle/features/library/presentation/logic/history_list_bloc/history_list_bloc.dart';
import 'package:video_gozle/features/nav/presentation/screen/nav_screen.dart';
import 'package:video_gozle/features/search/presentation/logic/seach_video_bloc/search_video_bloc.dart';
import 'package:video_gozle/features/search/presentation/logic/search_history_cubit/search_history_cubit.dart';
import 'package:video_gozle/features/settings/presentation/logic/settings/settings_provider.dart';
import 'package:video_gozle/features/splash/presentation/screen/splash_screen.dart';
import 'package:video_gozle/features/subscriptions/presentation/logic/subscribed_channel_list_bloc/subscribed_channel_list_bloc.dart';
import 'package:video_gozle/features/subscriptions/presentation/logic/subscribed_channel_video_list/subscribed_channel_video_list_bloc.dart';
import 'package:video_gozle/features/video/presentation/video/logic/video_bloc/video_bloc.dart';
import 'package:video_gozle/features/video/presentation/video_player/logic/video_player_provider.dart';
import 'package:video_gozle/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
// для плеера не удалять
// ignore: library_prefixes
import 'package:hooks_riverpod/hooks_riverpod.dart' as videoDoubleTap;

void appRunner() {
  final UserBloc userBloc = UserBloc();

  final videoPlayerProvider = VideoPlayerProvider();

  runApp(
    // provider scope для видеоплеера не убирать
    videoDoubleTap.ProviderScope(
      //
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => userBloc),
          BlocProvider(create: (context) => VideoListBloc(userBloc: userBloc)),
          BlocProvider(create: (context) => VideoBloc(videoPlayerProvider)),
          BlocProvider(create: (context) => VideoCategoryCubit()),
          // SubscribedChannels
          BlocProvider(create: (context) => SubscribedChannelListBloc()),
          BlocProvider(create: (context) => SubscribedChannelVideoListBloc()),
          // Search
          BlocProvider(create: (context) => SearchVideoBloc()),
          BlocProvider(create: (context) => SearchHistoryCubit()),
          // Library
          BlocProvider(create: (context) => HistoryListBloc()),
        ],
        child: MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => SettingsProvider()),
            ChangeNotifierProvider(create: (context) => videoPlayerProvider)
          ],
          child: const VideoGozle(),
        ),
      ),
    ),
  );
}

class VideoGozle extends StatelessWidget {
  const VideoGozle({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SettingsProvider>(
      builder: (context, settings, child) {
        return MaterialApp(
          title: "Gozle Video",
          debugShowCheckedModeBanner: false,
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            ...TkDelegates.delegates
          ],
          locale: settings.locale,
          supportedLocales: S.delegate.supportedLocales,
          themeMode: settings.themeMode,
          darkTheme: AppTheme.darkTheme,
          theme: AppTheme.lightTheme,
          initialRoute: SplashScreen.routeName,
          routes: {
            SplashScreen.routeName: (context) => const SplashScreen(),
            NavScreen.routeName: (context) => const NavScreen(),
            LoginScreen.routeName: (context) => const LoginScreen(),
          },
        );
      },
    );
  }
}
