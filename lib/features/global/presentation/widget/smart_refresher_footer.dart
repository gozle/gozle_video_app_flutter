import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:video_gozle/generated/l10n.dart';

class SmartRefresherFooter extends StatelessWidget {
  const SmartRefresherFooter({super.key});

  @override
  Widget build(BuildContext context) {
    if (SmartRefresher.of(context) != null) {
      return ClassicFooter(
        loadStyle: LoadStyle.ShowWhenLoading,
        canLoadingText: S.current.can_loading_text,
        idleText: S.current.idle_loading_text,
        noDataText: S.current.no_more_text,
        failedText: S.current.load_failed_text,
        loadingText: S.current.loading_text,
      );
    } else {
      return SizedBox(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: 25.0,
              height: 25.0,
              child: CircularProgressIndicator.adaptive(strokeWidth: 2.0),
            ),
            const SizedBox(width: 15),
            Text(
              S.current.loading_text,
              style: const TextStyle(color: Colors.grey),
            ),
          ],
        ),
      );
    }
  }
}
