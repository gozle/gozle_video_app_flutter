import 'package:flutter/material.dart';
import 'package:video_gozle/core/app_utils.dart';
import 'package:video_gozle/features/global/domain/models/video_model.dart';

class VideoDurationWidget extends StatelessWidget {
  const VideoDurationWidget({
    super.key,
    required this.video,
  });

  final Video video;

  @override
  Widget build(BuildContext context) {
    final duration = Duration(seconds: video.duration);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.black.withOpacity(0.3),
      ),
      child: Text(AppUtils.formatDuration(duration),
          style: Theme.of(context)
              .textTheme
              .titleSmall
              ?.copyWith(color: Colors.white, fontWeight: FontWeight.w600)),
    );
  }
}
