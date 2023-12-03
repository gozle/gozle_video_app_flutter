import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
              side: const BorderSide(color: Color(0xffF5F5F5)))),
      padding:
          MaterialStateProperty.all(const EdgeInsets.fromLTRB(8, 12, 8, 12)),
    );
    var darkCategoryStyle = ButtonStyle(
        backgroundColor:
            MaterialStatePropertyAll(Theme.of(context).secondaryHeaderColor),
        foregroundColor: const MaterialStatePropertyAll(Color(0xffF5F5F5)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
                side: const BorderSide(color: Color(0xffF5F5F5)))),
        padding:
            MaterialStateProperty.all(const EdgeInsets.fromLTRB(8, 12, 8, 12)));
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
          );
        },
        builder: (context, state) {
          return SafeArea(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      ChooseLocaleDialog.show(context);
                    },
                    child: Consumer<SettingsProvider>(
                        builder: (context, provider, _) {
                      return Text(provider.locale.languageCode.toUpperCase());
                    }),
                    style: context.theme.brightness == Brightness.dark
                        ? darkCategoryStyle
                        : lightStyle,
                  ),
                  const Spacer(),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed(NavScreen.routeName);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(S.current.skip),
                          const Icon(Icons.arrow_forward_ios)
                        ],
                      ))
                ],
              ),
              const Spacer(),
              Text(
                S.current.welcome_to_gozle_video,
                style: context.textTheme.titleLarge?.copyWith(fontSize: 28),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 15),
              Text(
                S.current.learning_and_entertainment_service,
                style: context.textTheme.bodyLarge?.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              state.maybeWhen(
                orElse: () {
                  return const Center(
                    child: CircularProgressIndicator.adaptive(),
                  );
                },
                unauthenticated: (oAuthClientData) {
                  return ElevatedButton(
                    onPressed: oAuthClientData != null
                        ? () {
                            context.read<UserBloc>().add(UserEvent.login(
                                oAuthClientData: oAuthClientData));
                          }
                        : null,
                    child: Text(S.current.login_or_register_with_gozle_id),
                  );
                },
              ),
              const SizedBox(height: 5, width: double.infinity),
              TextButton(
                onPressed: () {
                  launchUrlString('https://id.gozle.com.tm');
                },
                child: Text(S.current.why_need_gozle_id_account),
              ),
              const SizedBox(height: 5),
            ],
          ));
        },
      ),
    );
  }
}
