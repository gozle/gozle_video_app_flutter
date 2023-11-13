import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:video_gozle/generated/l10n.dart';

class UpdateAppDialog extends StatelessWidget {
  final String appUrl;
  const UpdateAppDialog({
    super.key,
    required this.appUrl,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      title: Text(S.current.update),
      content: Text(S.current.update_app),
      actions: [
        ElevatedButton(
          onPressed: () {
            launchUrlString(appUrl);
          },
          child: Text(S.current.update),
        )
      ],
    );
  }
}
