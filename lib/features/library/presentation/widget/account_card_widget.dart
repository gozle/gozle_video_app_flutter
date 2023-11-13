import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:video_gozle/core/constants.dart';
import 'package:video_gozle/core/theme.dart';
import 'package:video_gozle/features/auth/domain/models/user_model.dart';
import 'package:video_gozle/generated/l10n.dart';

class AccountCardWidget extends StatelessWidget {
  final User user;
  const AccountCardWidget({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).secondaryHeaderColor,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 23,
            backgroundColor: Theme.of(context).secondaryHeaderColor,
            backgroundImage: Image.network('${user.avatar}').image,
          ),
          const SizedBox(width: 24),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${user.firstName} ${user.lastName}',
                style: context.textTheme.titleLarge?.copyWith(fontSize: 20),
              ),
              const SizedBox(height: 5),
              RichText(
                text: TextSpan(
                  text: S.current.manage_gozle_account,
                  style: const TextStyle(
                    color: Color(0xFF00ACEE),
                    fontSize: 13,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      launchUrlString(AppConstants.accountSettins);
                    },
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
