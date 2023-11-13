import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:video_gozle/generated/l10n.dart';

class SmartRefresherHeader extends StatelessWidget {
  const SmartRefresherHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return ClassicHeader(
      canTwoLevelText: S.current.can_two_level_text,
      refreshingText: S.current.refreshing_text,
      completeText: S.current.refresh_complete_text,
      releaseText: S.current.can_refresh_text,
      failedText: S.current.refresh_failed_text,
      idleText: S.current.idle_refresh_text,
      refreshingIcon: const SizedBox(
        height: 30,
        width: 30,
        child: CircularProgressIndicator.adaptive(),
      ),
    );
  }
}
