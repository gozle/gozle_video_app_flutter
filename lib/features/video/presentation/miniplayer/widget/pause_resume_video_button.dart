import 'package:flutter/material.dart';
import 'package:video_gozle/features/global/presentation/widget/ink_wrapper.dart';

import '../../video_player/world_video_player/world_video_player.dart';

class PauseResumeVideoButton extends StatefulWidget {
  final WorldVideoPlayerController controller;
  const PauseResumeVideoButton({super.key, required this.controller});

  @override
  State<PauseResumeVideoButton> createState() => _PauseResumeVideoButtonState();
}

class _PauseResumeVideoButtonState extends State<PauseResumeVideoButton> {
  @override
  void initState() {
    widget.controller.addListener(_listener);
    super.initState();
  }

  @override
  void didUpdateWidget(covariant PauseResumeVideoButton oldWidget) {
    if (oldWidget.controller != widget.controller) {
      oldWidget.controller.removeListener(_listener);
      widget.controller.addListener(_listener);
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    widget.controller.removeListener(_listener);

    super.dispose();
  }

  void _listener() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    final playerState = widget.controller.value.playerState;

    if (playerState == PlayerState.ended) {
      return InkWrapper(
        onTap: () {
          widget.controller.repeat();
        },
        child: Container(
          width: 50,
          height: 50,
          padding: const EdgeInsets.all(10),
          child: const Icon(Icons.refresh),
        ),
      );
    }
    if (playerState == PlayerState.playing) {
      return InkWrapper(
        onTap: () {
          widget.controller.pause();
        },
        child: Container(
          width: 50,
          height: 50,
          padding: const EdgeInsets.all(10),
          child: const Icon(Icons.pause),
        ),
      );
    }
    if (playerState == PlayerState.paused) {
      return InkWrapper(
        onTap: () {
          widget.controller.resume();
        },
        child: Container(
          width: 50,
          height: 50,
          padding: const EdgeInsets.all(10),
          child: const Icon(Icons.play_arrow),
        ),
      );
    }

    return const SizedBox(
      width: 50,
      height: 50,
    );
  }
}
