import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_gozle/features/global/domain/models/video_model.dart';
import 'package:video_gozle/features/video/presentation/video/logic/video_like/video_like_cubit.dart';
import 'package:video_gozle/features/video/presentation/video/widget/loaded/feedback_buttons/like_button.dart';
import 'package:video_gozle/features/video/presentation/video/widget/loaded/feedback_buttons/share_button.dart';
import 'package:video_gozle/features/video/presentation/video/widget/loaded/feedback_buttons/report_button.dart';

class VideoDetailsFeedBackWidget extends StatelessWidget {
  final Video video;

  const VideoDetailsFeedBackWidget({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            const SizedBox(width: 18),
            BlocProvider(
              create: (context) {
                return VideoLikeCubit(
                  videoId: video.pk,
                  isLiked: video.isLiked!,
                  likesCount: video.likesCount ?? 0,
                );
              },
              child: const LikeButton(),
            ),
            const SizedBox(width: 10),
            ShareButton(videoId: video.pk),
            const SizedBox(width: 10),
            ReportButton(videoId: video.pk),
            // const SizedBox(width: 10),
            // SaveButton(videoId: video.pk),
            const SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}
