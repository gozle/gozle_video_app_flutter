import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_gozle/features/auth/presentation/logic/user_bloc/user_bloc.dart';
import 'package:video_gozle/features/auth/presentation/screen/login_screen.dart';
import 'package:video_gozle/generated/l10n.dart';

import '../../../../../../core/theme.dart';

class SubscribeAlertDialog {
  static show(BuildContext context, String title) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 0,
          insetPadding: const EdgeInsets.symmetric(horizontal: 18),
          titlePadding: const EdgeInsets.only(
            top: 24,
            left: 24,
            right: 24,
          ),
          title: Text(
            title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 20,
          ),
          content: SizedBox(
            width: MediaQuery.sizeOf(context).width,
            child: Text(
              S.current.then_sign_in_gozle_account,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: const Color.fromRGBO(96, 96, 96, 1),
                  ),
            ),
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    S.current.cancel,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    context.read<UserBloc>().add(const UserEvent.logout());

                    Navigator.of(context).pop();

                    Navigator.of(context).pushReplacementNamed(LoginScreen.routeName);
                  },
                  child: Text(
                    S.current.sign_in,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: AppColors.lightPrimary,
                        ),
                  ),
                ),
              ],
            )
          ],
        );
      },
    );
  }
}
