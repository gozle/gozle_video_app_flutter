import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_gozle/features/video/presentation/miniplayer/widget/close_video_button.dart';
import 'package:video_gozle/features/video/presentation/miniplayer/widget/pause_resume_video_button.dart';
import 'package:video_gozle/features/video/presentation/video/logic/video_bloc/video_bloc.dart';
import 'package:video_gozle/features/video/presentation/video_player/world_video_player/world_video_player.dart';

import '../../video_player/controls/gozle_video/widgets/custom_progress_bar.dart';

class MiniplayerTitle extends StatelessWidget {
  final WorldVideoPlayerController controller;
  const MiniplayerTitle({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VideoBloc, VideoState>(
      builder: (context, state) {
        return Expanded(
          child: Row(
            children: [
              const SizedBox(width: 5),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      state.maybeWhen(
                        advertisementLoaded: (ad) => ad.text,
                        loaded: (video) => video.title,
                        loading: (_, title) => '$title',
                        orElse: () => '',
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.clip,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      state.maybeWhen(
                        advertisementLoaded: (ad) => ad.description,
                        loaded: (video) => '${video.channelName}',
                        orElse: () => '',
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.clip,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 5),
              PauseResumeVideoButton(controller: controller),
              CloseVideoButton(controller: controller),
            ],
          ),
        );
      },
    );
  }
}
