import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_gozle/features/auth/presentation/logic/user_bloc/user_bloc.dart';
import 'package:video_gozle/features/auth/presentation/screen/login_screen.dart';
import 'package:video_gozle/features/splash/presentation/screen/splash_screen.dart';
import 'package:video_gozle/generated/l10n.dart';

class LogoutAlerDialog {
  static show(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 0,
          titlePadding: const EdgeInsets.only(top: 24, left: 24),
          title: Text(S.current.sign_out),
          contentPadding: const EdgeInsets.only(left: 24, right: 24, bottom: 15),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Divider(),
              const SizedBox(height: 15),
              Text(
                S.current.confirm_sign_out,
              ),
            ],
          ),
          actionsPadding: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
          actionsAlignment: MainAxisAlignment.center,
          actions: [
            Center(
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      style: const ButtonStyle(
                        padding: MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 10)),
                      ),
                      child: Text(
                        S.current.cancel,
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.red),
                        padding: MaterialStatePropertyAll(
                          EdgeInsets.symmetric(horizontal: 10),
                        ),
                      ),
                      onPressed: () {
                        context.read<UserBloc>().add(const UserEvent.logout());

                        Navigator.of(context).pop();

                        Navigator.of(context).pushReplacementNamed(SplashScreen.routeName);
                      },
                      child: Text(S.current.sign_out),
                    ),
                  ),
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
