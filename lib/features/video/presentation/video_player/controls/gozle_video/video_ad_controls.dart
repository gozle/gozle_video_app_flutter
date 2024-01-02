import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_gozle/features/global/presentation/widget/video_item_widget/video_item_thumbnail.dart';
import 'package:video_gozle/features/video/presentation/video_player/world_video_player/src/enums/fullscreen_state.dart';
import 'package:video_gozle/features/video/presentation/video_player/world_video_player/src/fullscreen_video_player.dart';

import '../../../../../../generated/l10n.dart';
import '../../../video/logic/video_bloc/video_bloc.dart';
import '../../world_video_player/world_video_player.dart';
import 'widgets/widgets.dart';

class VideoAdControls extends StatefulWidget {
  final Function() onMinimizeTap;
  final Function() onSkip;
  final ProgressBarTheme progressBarTheme;
  final WorldVideoPlayerController controller;
  final int skipDurationInSec;

  const VideoAdControls({
    super.key,
    required this.onMinimizeTap,
    required this.onSkip,
    required this.progressBarTheme,
    required this.controller,
    required this.skipDurationInSec,
  });

  @override
  State<VideoAdControls> createState() => _VideoAdControlsState();
}

class _VideoAdControlsState extends State<VideoAdControls> {
  // FULLSCREEN LISTENER

  FullScreenState fullScreenState = FullScreenState.DISABLED;

  Timer? skipTimer;
  bool showTimer = true;

  @override
  void initState() {
    widget.controller.addListener(_listener);
    startTimer();
    super.initState();
  }

  @override
  void didUpdateWidget(covariant VideoAdControls oldWidget) {
    if (oldWidget.controller != widget.controller) {
      oldWidget.controller.removeListener(_listener);
      widget.controller.addListener(_listener);
    }
    super.didUpdateWidget(oldWidget);
  }

  void _listener() {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      if(widget.controller.value.position == widget.controller.value.totalDuration) {
        context.read<VideoBloc>()
            .add(const VideoEvent.closeAdd());
      }
      return null;
    });

    if (widget.controller.value.fullScreenState != fullScreenState) {
      setState(
        () => fullScreenState = widget.controller.value.fullScreenState,
      );

      if (fullScreenState == FullScreenState.ENTERING) {
        try {
          Navigator.of(context).push(
            PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) => WorldVideoFullScreenPlayer(
                controller: widget.controller,
                customControls: widget,
              ),
              transitionsBuilder: (context, animation, secondaryAnimation, child) {
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
            ),
          );
        } catch (e) {
          widget.controller.disableFullScreen();
        }
      }
    } else {
      if (mounted) {
        setState(() {});
      }
    }
  }

  @override
  void dispose() {
    // Убедитесь, что мы отписываемся от контроллера, чтобы избежать утечек памяти

    widget.controller.removeListener(_listener);

    super.dispose();
  }

  startTimer() {
    skipTimer = Timer.periodic(const Duration(seconds: 1), tick);
  }

  tick(timer) {
    if (widget.controller.videoPlayerController.value.position.inSeconds >
        widget.skipDurationInSec) {
      stopTimer();
      return;
    }
    setState(() {});
  }

  stopTimer() {
    skipTimer?.cancel();

    setState(() {
      showTimer = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final playerValue = widget.controller.value;
    final controlsState = playerValue.controlsState;
    final isVisible =
        controlsState == ControlsState.VISIBLE || controlsState == ControlsState.ALWAYS_VISIBLE;
    final playerState = playerValue.playerState;
    final timer = (widget.skipDurationInSec + 1 /* because we got minus value*/) -
        widget.controller.videoPlayerController.value.position.inSeconds;

    if (controlsState == ControlsState.DISABLED) {
      if (playerState == PlayerState.initing) {
        if (playerValue.thumbnail != null) {
          return Stack(
            alignment: Alignment.center,
            fit: StackFit.expand,
            children: [
              VideoThumbnailWidget(thumbnail: playerValue.thumbnail!),
            ],
          );
        }
      } else {
        return const SizedBox.shrink();
      }
    }

    if (playerValue.thumbnail != null && playerState == PlayerState.initing) {
      return Stack(
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: [
          VideoThumbnailWidget(thumbnail: playerValue.thumbnail!),
          Center(
            child: PlayPauseButton(controller: widget.controller),
          ),
          // NOT FULLSCREEN BOTTOM BAR CONTROLS
        ],
      );
    }

    return Stack(
      fit: StackFit.expand,
      children: [
        // conrollers background
        AnimatedOpacity(
          opacity: isVisible ? 1 : 0,
          duration: const Duration(milliseconds: 150),
          child: Container(color: Colors.black54),
        ),
        // show hide controls + double tap seek
        TouchShutter(controller: widget.controller),

        // play pause loading repeat
        Center(
          child: PlayPauseButton(controller: widget.controller),
        ),
        // other

        // NOT FULLSCREEN TOP BAR CONTROLS
        Positioned(
          top: 0,
          left: 0,
          child: Visibility(
            visible: isVisible,
            child: AnimatedOpacity(
              opacity: isVisible ? 1 : 0,
              duration: const Duration(milliseconds: 150),
              child: InkWrapper(
                borderRadius: BorderRadius.circular(50),
                onTap: widget.onMinimizeTap,
                child: const Padding(
                  padding: EdgeInsets.all(15),
                  child: Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
            ),
          ),
        ),
        // NOT FULLSCREEN BOTTOM BAR CONTROLS
        Positioned(
          bottom: 20,
          left: 10,
          right: 10,
          child: Visibility(
            visible: isVisible,
            child: AnimatedOpacity(
              opacity: isVisible ? 1 : 0,
              duration: const Duration(milliseconds: 150),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '${durationFormatter(playerValue.position.inMilliseconds)} / ${durationFormatter(playerValue.totalDuration.inMilliseconds)}',
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                  const Spacer(),
                  if (showTimer)
                    Container(
                      margin: const EdgeInsets.only(right: 8),
                      padding: const EdgeInsets.symmetric(
                        vertical: 3,
                        horizontal: 6,
                      ),
                      child: Text(
                        '$timer s',
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    )
                  else
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: widget.onSkip,
                          borderRadius: BorderRadius.circular(4),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.black38,
                              borderRadius: BorderRadius.circular(4),
                            ),
                            padding: const EdgeInsets.symmetric(
                              vertical: 3,
                              horizontal: 6,
                            ),
                            child: Text(
                              S.current.skip,
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  // InkWrapper(
                  //   borderRadius: BorderRadius.circular(50),
                  //   child: Container(
                  //     padding: const EdgeInsets.only(
                  //         top: 15, left: 15, bottom: 5, right: 5),
                  //     child: Icon(
                  //       playerValue.fullScreenState == FullScreenState.ENABLED
                  //           ? Icons.fullscreen_exit
                  //           : Icons.fullscreen,
                  //       size: 20,
                  //       color: Colors.white,
                  //     ),
                  //   ),
                  //   onTap: () {
                  //     if (playerValue.fullScreenState ==
                  //         FullScreenState.ENABLED) {
                  //       widget.controller.disableFullScreen();
                  //     } else {
                  //       widget.controller.enableFullScreen();
                  //     }
                  //   },
                  // ),
                ],
              ),
            ),
          ),
        ),

        // NOT FULLSCREEN PROGRESS BAR
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Stack(
            children: [
              CustomProgressBar(
                controller: widget.controller,
                progressBarTheme: widget.progressBarTheme,
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 30,
                  color: Colors.transparent,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
