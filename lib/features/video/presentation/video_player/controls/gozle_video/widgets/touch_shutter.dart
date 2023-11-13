import 'dart:async';

import 'package:double_tap_player_view/double_tap_player_view.dart';
import 'package:flutter/material.dart';

import '../../../world_video_player/src/enums/enums.dart';
import '../../../world_video_player/src/player_controller.dart';

class TouchShutter extends StatefulWidget {
  const TouchShutter({super.key, required this.controller});

  final WorldVideoPlayerController controller;

  @override
  State<TouchShutter> createState() => _TouchShutterState();
}

class _TouchShutterState extends State<TouchShutter> {
  Timer? _timer;

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _toggleControls() {
    final controlsState = widget.controller.value.controlsState;
    final isVisible = controlsState == ControlsState.VISIBLE || controlsState == ControlsState.ALWAYS_VISIBLE;

    if (isVisible) {
      widget.controller.hideControls();
    } else {
      widget.controller.showControls();
    }

    _timer?.cancel();
    _timer = Timer(const Duration(seconds: 3), () {
      if (!widget.controller.value.isDragging) {
        if (widget.controller.value.playerState != PlayerState.paused &&
            widget.controller.value.controlsState != ControlsState.ALWAYS_VISIBLE) {
          widget.controller.hideControls();
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleControls,
      child: DoubleTapPlayerView(
        doubleTapConfig: DoubleTapConfig.create(
          onDoubleTap: (lr) {
            lr == Lr.LEFT ? widget.controller.seekBack() : widget.controller.seekFront();
          },
        ),
      ),
    );
  }
}
