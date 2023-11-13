import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_gozle/features/global/presentation/widget/ink_wrapper.dart';
import 'package:video_gozle/features/video/presentation/video/logic/video_bloc/video_bloc.dart';
import 'package:video_gozle/features/video/presentation/video_player/world_video_player/src/player_controller.dart';

class CloseVideoButton extends StatelessWidget {
  final WorldVideoPlayerController controller;

  const CloseVideoButton({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return InkWrapper(
      onTap: () {
        context.read<VideoBloc>().add(const VideoEvent.remove());
      },
      child: Container(
        width: 50,
        height: 50,
        padding: const EdgeInsets.all(10),
        child: const Icon(Icons.close),
      ),
    );
  }
}
