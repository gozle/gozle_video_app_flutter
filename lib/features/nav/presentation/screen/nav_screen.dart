import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:video_gozle/core/app_assets.dart';
import 'package:video_gozle/core/theme.dart';
import 'package:video_gozle/features/auth/presentation/logic/user_bloc/user_bloc.dart';
import 'package:video_gozle/features/channel/presentation/screen/channel_details_screen.dart';
import 'package:video_gozle/features/global/presentation/widget/fade_indexed_stack.dart';
import 'package:video_gozle/features/home/presentation/screen/home_screen.dart';
import 'package:video_gozle/features/library/presentation/screen/history_list_screen.dart';
import 'package:video_gozle/features/library/presentation/screen/library_screen.dart';
import 'package:video_gozle/features/nav/presentation/widget/nav_key_provider.dart';
import 'package:video_gozle/features/search/presentation/screen/search_screen.dart';
import 'package:video_gozle/features/subscriptions/presentation/screen/subscriptions_channels_screen.dart';
import 'package:video_gozle/features/subscriptions/presentation/screen/subscriptions_screen.dart';
import 'package:video_gozle/features/video/presentation/miniplayer/widget/miniplayer_widget.dart';
import 'package:video_gozle/features/video/presentation/video/logic/video_bloc/video_bloc.dart';
import 'package:video_gozle/generated/l10n.dart';
import 'package:video_gozle/fcm.dart' as CloudMessaging;


final rootNavigatorKey = GlobalKey<NavigatorState>();

class NavScreen extends StatefulWidget {
  static String routeName = '/main-nav';
  final bool showSubscribes;

  const NavScreen({super.key, required this.showSubscribes,});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> with SingleTickerProviderStateMixin {
  late AnimationController miniplayerAnimationController;
  late PanelController miniplayerController;
  StreamSubscription<String?>? onFcmMessageReceivedStreamSub;


  @override
  void initState() {
    setupInitialRoutes();

    miniplayerAnimationController = AnimationController(
      vsync: this,
      duration: Duration.zero,
    );

    miniplayerController = PanelController();

    super.initState();

    Future.delayed(Duration.zero).then(
      (value) {
        // устанавливаю миниплеер контроллер
        context.read<VideoBloc>().setMiniplayerController(
              miniplayerController: miniplayerController,
            );
      },
    );
  }

  Future<void> setupInitialRoutes() async {
    onFcmMessageReceivedStreamSub =
        CloudMessaging.selectNotificationStream.stream.listen((payload) {
          if (payload != null && mounted) {
            CloudMessaging.handleNotificationPayload(context, payload);
          }
        });

    while (mounted) {
      final rootContext = rootNavigatorKey.currentContext;
      if (rootContext != null && rootContext.mounted) {
        final notificationData = CloudMessaging.selectedNotificationPayload();
        if (notificationData != null) {
          //FIXME: await frame build, if we didn't await then [Navigator] replaces this screen (set as root)
          WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
            if (mounted) {
              CloudMessaging.handleNotificationPayload(context, notificationData);
            }
          });
        }
        break;
      }

      //await one frame time
      await Future<void>.delayed(const Duration(milliseconds: 16));
    }
  }

  @override
  void dispose() {
    onFcmMessageReceivedStreamSub?.cancel();
    onFcmMessageReceivedStreamSub = null;

    if (miniplayerController.isAttached) {
      miniplayerController.close();
    }
    miniplayerAnimationController.dispose();
    super.dispose();
  }

  Route? onGenerateRoute(RouteSettings settings) {
    if (settings.name == HomeScreen.routeName) {
      return MaterialPageRoute(
        settings: settings,
        builder: (context) {
          return const HomeScreen();
        },
      );
    }

    if (settings.name == SubscriptionsScreen.routeName) {
      return MaterialPageRoute(
        settings: settings,
        builder: (context) {
          return const SubscriptionsScreen();
        },
      );
    }

    if (settings.name == LibraryScreen.routeName) {
      return MaterialPageRoute(
        settings: settings,
        builder: (context) {
          return const LibraryScreen();
        },
      );
    }

    if (settings.name == SearchScreen.routeName) {
      return MaterialPageRoute(
        settings: settings,
        builder: (context) {
          return const SearchScreen();
        },
      );
    }

    if (settings.name == HistoryListScreen.routeName) {
      return MaterialPageRoute(
        settings: settings,
        builder: (context) {
          return const HistoryListScreen();
        },
      );
    }
    if (settings.name == SubscribedChannelListScreen.routeName) {
      return MaterialPageRoute(
        settings: settings,
        builder: (context) {
          return const SubscribedChannelListScreen();
        },
      );
    }

    if (settings.name == ChannelDetailsScreen.routeName) {
      final String channelId = (settings.arguments as Map)['channel_id'];
      final String? channelName = (settings.arguments as Map)['channel_name'];
      return MaterialPageRoute(
        settings: settings,
        builder: (context) {
          return ChannelDetailsScreen(
            channelId: channelId,
            channelName: channelName,
          );
        },
      );
    }
    return null;
  }

  int _currentIndex = 0;

  final List<GlobalKey<NavigatorState>> _navigatorKeys = [
    GlobalKey<NavigatorState>(debugLabel: 'Home'),
    GlobalKey<NavigatorState>(debugLabel: 'Subscriptions'),
    GlobalKey<NavigatorState>(debugLabel: 'Library'),
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (miniplayerController.isAttached && miniplayerController.isPanelOpen) {
          miniplayerController.close();
          return false;
        } else {
          if (_navigatorKeys[_currentIndex].currentState?.canPop() == true) {
            _navigatorKeys[_currentIndex].currentState?.pop();
            return false;
          } else {
            return true;
          }
        }
      },
      child: Scaffold(
        appBar: CustomAppBar(miniplayerAnimationController: miniplayerAnimationController),
        body: Stack(
          children: [
            FadeIndexedStack(
              index: _currentIndex,
              children: [
                Navigator(
                  key: _navigatorKeys[0],
                  initialRoute: HomeScreen.routeName,
                  onGenerateRoute: onGenerateRoute,
                ),
                if (widget.showSubscribes)
                  Navigator(
                    key: _navigatorKeys[1],
                    initialRoute: SubscriptionsScreen.routeName,
                    onGenerateRoute: onGenerateRoute,
                  ),
                Navigator(
                  key: _navigatorKeys[widget.showSubscribes ? 2 : 1],
                  initialRoute: LibraryScreen.routeName,
                  onGenerateRoute: onGenerateRoute,
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: NavKeyProvider(
                navKey: _navigatorKeys[_currentIndex],
                child: BlocBuilder<VideoBloc, VideoState>(
                  builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () {
                        return MiniplayerWidget(
                          panelController: miniplayerController,
                          miniplayerAnimationController: miniplayerAnimationController,
                        );
                      },
                      error: (message, _) {
                        return MiniplayerWidget(
                          panelController: miniplayerController,
                          miniplayerAnimationController: miniplayerAnimationController,
                        );
                      },
                      initial: () {
                        return const SizedBox.shrink();
                      },
                    );
                  },
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: AnimatedBuilder(
          animation: miniplayerAnimationController,
          builder: (BuildContext context, Widget? child) {
            const int bottomNabBarMinHeight = 60;

            final offset = Tween<Offset>(
              begin: const Offset(0, 0),
              end: const Offset(0, 1),
            ).animate(
              CurvedAnimation(
                parent: miniplayerAnimationController,
                curve: Interval(
                  MediaQuery.of(context).orientation == Orientation.portrait ? 0.0 : 0.4,
                  MediaQuery.of(context).orientation == Orientation.portrait ? 0.5 : 0.9,
                ),
              ),
            );

            final heightStagger = Tween<double>(
              begin: bottomNabBarMinHeight + MediaQuery.of(context).padding.bottom,
              end: 0,
            ).animate(
              CurvedAnimation(
                parent: miniplayerAnimationController,
                curve: Interval(
                  MediaQuery.of(context).orientation == Orientation.portrait ? 0.0 : 0.4,
                  MediaQuery.of(context).orientation == Orientation.portrait ? 0.5 : 0.9,
                ),
              ),
            );
            return AnimatedSlide(
              duration: Duration.zero,
              offset: offset.value,
              child: SizedBox(
                height: heightStagger.value,
                child: Center(
                  child: BlocBuilder<UserBloc, UserState>(
                    builder: (context, state) {
                      final isTheme = context.theme.brightness == Brightness.dark;
                      return NavigationBar(
                        height: heightStagger.value,
                        selectedIndex: _currentIndex,
                        onDestinationSelected: (selectedScreenIndex) {
                          setState(() {
                            _currentIndex = selectedScreenIndex;
                          });
                        },
                        destinations: [
                          //TODO: clean the code
                          NavigationDestination(
                            selectedIcon: SvgPicture.asset(
                              isTheme ? AppAssets.whiteHomeIcon : AppAssets.filledHomeIcon,
                              height: 32,
                            ),
                            icon: SvgPicture.asset(
                              AppAssets.homeIcon,
                              color: isTheme ? Colors.white : null,
                              height: 30,
                            ),
                            label: S.current.main_page,
                          ),
                          if (widget.showSubscribes)
                            NavigationDestination(
                              selectedIcon: SvgPicture.asset(
                                AppAssets.filledSubscriptionsIcon,
                                color: isTheme ? Colors.white : null,
                                height: 32,
                              ),
                              icon: SvgPicture.asset(
                                AppAssets.subscriptionsIcon,
                                color: isTheme ? Colors.white : null,
                                height: 30,
                              ),
                              label: S.current.subscriptions,
                            ),
                          NavigationDestination(
                            selectedIcon: SvgPicture.asset(
                              AppAssets.filledUserUnsigned,
                              color: isTheme ? Colors.white : null,
                              height: 32,
                            ),
                            icon: state.maybeWhen(
                              orElse: () => SvgPicture.asset(
                                AppAssets.userUnsigned,
                                color: isTheme ? Colors.white : null,
                                height: 32,
                              ),
                              authenticated: (user) => SizedBox(
                                width: 30,
                                height: 30,
                                child: CircleAvatar(
                                  radius: 150,
                                  backgroundImage: Image.network(
                                    user.avatar ?? '',
                                  ).image,
                                ),
                              ),
                            ),
                            label: S.current.profile,
                          )
                        ],
                      );
                    },
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class CustomAppBar extends AnimatedWidget implements PreferredSizeWidget {
  final AnimationController miniplayerAnimationController;

  const CustomAppBar({
    super.key,
    required this.miniplayerAnimationController,
  }) : super(listenable: miniplayerAnimationController);

  @override
  Widget build(BuildContext context) {
    Animation<Color?> statusBarColor =
        ColorTween(begin: Theme.of(context).appBarTheme.backgroundColor, end: Colors.black).animate(
      CurvedAnimation(
        parent: miniplayerAnimationController,
        curve: const Interval(0, 1.0),
      ),
    );
    return AppBar(
      automaticallyImplyLeading: false,
      toolbarHeight: 0,
      backgroundColor: statusBarColor.value,
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 0);
}
