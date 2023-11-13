import 'package:flutter/material.dart';

import '../../../world_video_player/world_video_player.dart';

class PlayPauseButton extends StatefulWidget {
  final WorldVideoPlayerController controller;

  const PlayPauseButton({
    super.key,
    required this.controller,
  });

  @override
  State<PlayPauseButton> createState() => _PlayPauseButtonState();
}

class _PlayPauseButtonState extends State<PlayPauseButton> with TickerProviderStateMixin {
  late AnimationController _animController;

  @override
  void initState() {
    super.initState();
    _animController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 150),
    );

    if (widget.controller.value.playerState == PlayerState.playing) {
      _animController.forward(from: 1);
    } else {
      _animController.reverse(from: 0);
    }

    widget.controller.addListener(_playPauseListener);
  }

  @override
  void dispose() {
    widget.controller.removeListener(_playPauseListener);
    _animController.dispose();
    super.dispose();
  }

  Future<void> _playPauseListener() async {
    return widget.controller.value.playerState == PlayerState.playing
        ? _animController.forward()
        : _animController.reverse();
  }

  @override
  Widget build(BuildContext context) {
    final controlsState = widget.controller.value.controlsState;
    final playerState = widget.controller.value.playerState;
    final isVisible = controlsState == ControlsState.VISIBLE || controlsState == ControlsState.ALWAYS_VISIBLE;

    if (playerState == PlayerState.buffering ||
        playerState == PlayerState.initing ||
        playerState == PlayerState.inited) {
      return const SizedBox(
        width: 60.0,
        height: 60.0,
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation(Colors.white),
        ),
      );
    }
    return Visibility(
      maintainAnimation: true,
      maintainState: true,
      visible: isVisible,
      child: AnimatedOpacity(
          opacity: isVisible ? 1 : 0,
          duration: const Duration(milliseconds: 150),
          child: Builder(
            builder: (context) {
              final controller = widget.controller;
              final playerState = controller.value.playerState;

              if (playerState == PlayerState.ended) {
                return ClipOval(
                  child: Material(
                    color: Colors.black45,
                    child: InkWell(
                      onTap: () => widget.controller.repeat(),
                      child: const Padding(
                          padding: EdgeInsets.all(15),
                          child: Icon(
                            Icons.refresh,
                            color: Colors.white,
                            size: 30,
                          )),
                    ),
                  ),
                );
              }

              if (playerState == PlayerState.playing || playerState == PlayerState.paused) {
                return ClipOval(
                  child: Material(
                    color: Colors.black45,
                    child: InkWell(
                      radius: 30,
                      onTap: () => widget.controller.value.playerState == PlayerState.playing
                          ? controller.pause()
                          : controller.resume(),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: AnimatedIcon(
                          icon: AnimatedIcons.play_pause,
                          progress: _animController.view,
                          color: Colors.white,
                          size: 40.0,
                        ),
                      ),
                    ),
                  ),
                );
              }

              return const SizedBox();
              // if (playerState == PlayerState.ended) {

              // }
            },
          )),
    );
  }
}
