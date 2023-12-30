import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:video_gozle/core/app_assets.dart';
import 'package:video_gozle/core/constants.dart';
import 'package:video_gozle/features/auth/presentation/logic/user_bloc/user_bloc.dart';
import 'package:video_gozle/features/check_updates/domain/user_cases/check_updates_use_cases.dart';
import 'package:video_gozle/features/nav/presentation/screen/nav_screen.dart';
import 'package:video_gozle/features/splash/presentation/widget/update_app_widget.dart';
import 'package:video_gozle/features/tester/data/test_api_client.dart';
import 'package:video_gozle/injection.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/splash';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    checkAppVersion();

    TestApiClient.test();

    Future.delayed(const Duration(seconds: 3)).then(
      (_) {
        context.read<UserBloc>().add(const UserEvent.restore());
      },
    );
    super.initState();
  }

  void checkAppVersion() async {
    final repository = locator<CheckUpdatesUseCases>();

    repository.getUpdateInfo().then(
      (appInfo) {
        if (Platform.isIOS) {
          if (appInfo.iosVersion != AppConstants.iosAppVersion) {
            showDialog(
              context: context,
              barrierDismissible: false,
              useRootNavigator: true,
              builder: (context) {
                return UpdateAppDialog(appUrl: appInfo.iosAppLink!);
              },
            );
          }
        } else if (Platform.isAndroid) {
          if (appInfo.androidVersion != AppConstants.androidAppVersion) {
            showDialog(
              context: context,
              barrierDismissible: false,
              useRootNavigator: true,
              builder: (context) {
                return UpdateAppDialog(appUrl: appInfo.androidAppLink!);
              },
            );
          }
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserBloc, UserState>(
      listener: (context, state) {
        state.whenOrNull(
          authenticated: (user) {
            Navigator.of(context).pushReplacementNamed(
              NavScreen.routeName,
              arguments: const NavScreen(showSubscribes: true),
            );
          },
          skippedLogin: (skipped) => {
            if (skipped)
              Navigator.of(context).pushReplacementNamed(
                NavScreen.routeName,
                arguments: const NavScreen(showSubscribes: false),
              ),
          },
          unauthenticated: (oAuthClientData) {
            // TODO: if first page need remove remove it && uncomment under this...
            Navigator.of(context).pushReplacementNamed(
              NavScreen.routeName,
              arguments: const NavScreen(showSubscribes: false),
            );
            // Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
          },
        );
      },
      child: Scaffold(
        body: Center(
          child: SvgPicture.asset(
            Theme.of(context).brightness == Brightness.dark
                ? AppAssets.appBarDarkLogo
                : AppAssets.appBarLightLogo,
            height: 40,
          ),
        ),
      ),
    );
  }
}
