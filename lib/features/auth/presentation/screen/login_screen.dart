import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:video_gozle/core/app_assets.dart';
import 'package:video_gozle/core/theme.dart';
import 'package:video_gozle/features/auth/presentation/logic/user_bloc/user_bloc.dart';
import 'package:video_gozle/features/global/presentation/widget/custom_snack_bar.dart';
import 'package:video_gozle/features/nav/presentation/screen/nav_screen.dart';
import 'package:video_gozle/features/settings/presentation/logic/settings/settings_provider.dart';
import 'package:video_gozle/features/settings/presentation/widget/choose_locale_dialog.dart';
import 'package:video_gozle/generated/l10n.dart';

class LoginScreen extends StatefulWidget {
  static String routeName = '/login';

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var lightStyle = ButtonStyle(
      backgroundColor: MaterialStateProperty.all(const Color(0xffF5F5F5)),
      textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 18)),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          side: const BorderSide(color: Color(0xffF5F5F5)))),
      padding: MaterialStateProperty.all(const EdgeInsets.fromLTRB(8, 12, 8, 12)),
    );
    var darkCategoryStyle = ButtonStyle(
        textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 18)),
        backgroundColor: MaterialStatePropertyAll(Theme.of(context).secondaryHeaderColor),
        foregroundColor: const MaterialStatePropertyAll(Color(0xffF5F5F5)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
            side: const BorderSide(color: Color(0xffF5F5F5)))),
        padding: MaterialStateProperty.all(const EdgeInsets.fromLTRB(8, 12, 8, 12)));
    return Scaffold(
      body: BlocConsumer<UserBloc, UserState>(
        listener: (context, state) {
          state.whenOrNull(
            notification: (errorMessage) {
              CustomSnackBar.show(context, message: errorMessage);
            },
            authenticated: (_) {
              Navigator.of(context).pushReplacementNamed(NavScreen.routeName);
            },
            skippedLogin: (skipped) => {
              if (skipped) {Navigator.of(context).pushReplacementNamed(NavScreen.routeName)}
            },
          );
        },
        builder: (context, state) {
          return Consumer<SettingsProvider>(
              builder: (_, __, ___) => SafeArea(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                              onPressed: () {
                                ChooseLocaleDialog.show(context);
                              },
                              style: context.theme.brightness == Brightness.dark
                                  ? darkCategoryStyle
                                  : lightStyle,
                              child: Consumer<SettingsProvider>(builder: (context, provider, _) {
                                return Text(provider.locale.languageCode.toUpperCase());
                              }),
                            ),
                            const Spacer(),
                            TextButton(
                              style: ButtonStyle(
                                  textStyle:
                                      MaterialStateProperty.all(const TextStyle(fontSize: 18))),
                              onPressed: () {
                                context.read<UserBloc>().add(
                                      const UserEvent.skipLogin(skipped: true),
                                    );
                                Navigator.of(context).pushReplacementNamed(
                                  NavScreen.routeName,
                                  arguments: const NavScreen(showSubscribes: false),
                                );
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(S.current.skip),
                                  const Icon(Icons.arrow_forward_ios)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Column(
                        children: [
                          SvgPicture.asset(
                            Theme.of(context).brightness == Brightness.dark
                                ? AppAssets.appBarDarkLogo
                                : AppAssets.appBarLightLogo,
                            height: 60,
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Text(
                        S.current.learning_and_entertainment_service,
                        style: context.textTheme.bodyLarge?.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 5, width: double.infinity),
                      TextButton(
                        onPressed: () {
                          launchUrlString('https://id.gozle.com.tm');
                        },
                        child: InkWell(child: Text(S.current.why_need_gozle_id_account)),
                      ),
                      const Spacer(),
                      state.maybeWhen(
                        orElse: () {
                          return const Center(
                            child: CircularProgressIndicator.adaptive(),
                          );
                        },
                        unauthenticated: (oAuthClientData) {
                          return Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: ElevatedButton(
                              style: const ButtonStyle(
                                  alignment: Alignment.center,
                                  minimumSize: MaterialStatePropertyAll(Size.fromHeight(50)),
                                  textStyle:
                                      MaterialStatePropertyAll(const TextStyle(fontSize: 18))),
                              onPressed: oAuthClientData != null
                                  ? () {
                                      context
                                          .read<UserBloc>()
                                          .add(UserEvent.login(oAuthClientData: oAuthClientData));
                                    }
                                  : null,
                              child: Text(S.current.sign_in),
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 5),
                    ],
                  )));
        },
      ),
    );
  }
}
