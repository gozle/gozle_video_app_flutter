import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:video_gozle/features/global/presentation/widget/video_item_widget/video_item_thumbnail.dart';
import 'package:video_gozle/features/video/presentation/video_player/widget/video_settings_bottom_sheet.dart';
import 'package:video_gozle/features/video/presentation/video_player/world_video_player/src/enums/fullscreen_state.dart';
import 'package:video_gozle/features/video/presentation/video_player/world_video_player/src/fullscreen_video_player.dart';
import '../../world_video_player/world_video_player.dart';
import 'icons_assets.dart';
import 'widgets/widgets.dart';

class GozleVideoControls extends StatefulWidget {
  final Function() onMinimizeTap;
  final ProgressBarTheme progressBarTheme;
  final WorldVideoPlayerController controller;

  const GozleVideoControls({
    super.key,
    required this.onMinimizeTap,
    required this.progressBarTheme,
    required this.controller,
  });

  @override
  State<GozleVideoControls> createState() => _GozleVideoControlsState();
}

class _GozleVideoControlsState extends State<GozleVideoControls> {
  // FULLSCREEN LISTENER

  FullScreenState fullScreenState = FullScreenState.DISABLED;

  @override
  void initState() {
    widget.controller.addListener(_listener);
    super.initState();
  }

  @override
  void didUpdateWidget(covariant GozleVideoControls oldWidget) {
    if (oldWidget.controller != widget.controller) {
      oldWidget.controller.removeListener(_listener);
      widget.controller.addListener(_listener);
    }
    super.didUpdateWidget(oldWidget);
  }

  void _listener() {
    if (widget.controller.value.fullScreenState != fullScreenState) {
      setState(() {
        fullScreenState = widget.controller.value.fullScreenState;
      });

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

  @override
  Widget build(BuildContext context) {
    final playerValue = widget.controller.value;
    final controlsState = playerValue.controlsState;
    final isVisible = controlsState == ControlsState.VISIBLE || controlsState == ControlsState.ALWAYS_VISIBLE;
    final playerState = playerValue.playerState;

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
          Positioned(
            bottom: 20,
            left: 10,
            right: 10,
            child: SafeArea(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Spacer(),
                  InkWrapper(
                    borderRadius: BorderRadius.circular(50),
                    child: Container(
                      padding: const EdgeInsets.only(top: 15, left: 15, bottom: 5, right: 5),
                      child: Icon(
                        playerValue.fullScreenState == FullScreenState.ENABLED
                            ? Icons.fullscreen_exit
                            : Icons.fullscreen,
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                    onTap: () {
                      if (playerValue.fullScreenState == FullScreenState.ENABLED) {
                        widget.controller.disableFullScreen();
                      } else {
                        widget.controller.enableFullScreen();
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
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
        Center(child: PlayPauseButton(controller: widget.controller)),
        // other
        if (playerValue.fullScreenState == FullScreenState.ENABLED) ...[
          SafeArea(
            child: Stack(
              children: [
                //  FULLSCREEN TOP BAR CONTROLS

                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Visibility(
                    visible: isVisible,
                    child: AnimatedOpacity(
                      opacity: isVisible ? 1 : 0,
                      duration: const Duration(milliseconds: 150),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWrapper(
                            borderRadius: BorderRadius.circular(50),
                            child: Container(
                              padding: const EdgeInsets.all(15),
                              child: const Icon(
                                Icons.keyboard_arrow_down,
                                color: Colors.white,
                                size: 20,
                              ),
                            ),
                            onTap: () {
                              widget.controller.disableFullScreen();
                            },
                          ),
                          Expanded(
                              child: Text(
                            playerValue.title ?? '',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                            ),
                          )),
                          const SizedBox(width: 5),
                          InkWrapper(
                            borderRadius: BorderRadius.circular(50),
                            onTap: () {
                              VideoSettingsBottomSheet.show(
                                context,
                                worldVideoPlayerController: widget.controller,
                              );
                            },
                            child: Container(
                              padding: const EdgeInsets.all(15),
                              child: SvgPicture.asset(
                                PlayerIconsAssets.settingsIcon,
                                colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                                height: 20,
                                width: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                // FULLSCREEN BOTTOM BAR CONTROLS
                Positioned(
                  bottom: 25,
                  right: 20,
                  left: 20,
                  child: Visibility(
                    visible: isVisible,
                    child: AnimatedOpacity(
                      opacity: isVisible ? 1 : 0,
                      duration: const Duration(milliseconds: 150),
                      child: CustomProgressBar(
                        controller: widget.controller,
                        progressBarTheme: widget.progressBarTheme,
                      ),
                    ),
                  ),
                ),

                // FULLSCREEN PROGRESS BAR
                Positioned(
                  bottom: 50,
                  left: 20,
                  right: 20,
                  child: Visibility(
                    visible: isVisible,
                    child: AnimatedOpacity(
                      opacity: isVisible ? 1 : 0,
                      duration: const Duration(milliseconds: 150),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '${durationFormatter(playerValue.position.inMilliseconds)} / ${durationFormatter(playerValue.totalDuration.inMilliseconds)}',
                            style: const TextStyle(fontSize: 12, color: Colors.white),
                          ),
                          const Spacer(),
                          InkWrapper(
                            borderRadius: BorderRadius.circular(50),
                            child: Container(
                              padding: const EdgeInsets.all(15),
                              child: Icon(
                                playerValue.fullScreenState == FullScreenState.ENABLED
                                    ? Icons.fullscreen_exit
                                    : Icons.fullscreen,
                                size: 25,
                                color: Colors.white,
                              ),
                            ),
                            onTap: () {
                              if (playerValue.fullScreenState == FullScreenState.ENABLED) {
                                widget.controller.disableFullScreen();
                              } else {
                                widget.controller.enableFullScreen();
                              }
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ] else ...[
          // NOT FULLSCREEN TOP BAR CONTROLS
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Visibility(
              visible: isVisible,
              child: AnimatedOpacity(
                opacity: isVisible ? 1 : 0,
                duration: const Duration(milliseconds: 150),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWrapper(
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
                    const Spacer(),
                    InkWrapper(
                      borderRadius: BorderRadius.circular(50),
                      onTap: () {
                        VideoSettingsBottomSheet.show(context, worldVideoPlayerController: widget.controller);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: SvgPicture.asset(
                          PlayerIconsAssets.settingsIcon,
                          colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                          height: 20,
                          width: 20,
                        ),
                      ),
                    ),
                  ],
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
                      style: const TextStyle(fontSize: 12, color: Colors.white),
                    ),
                    const Spacer(),
                    InkWrapper(
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        padding: const EdgeInsets.only(top: 15, left: 15, bottom: 5, right: 5),
                        child: Icon(
                          playerValue.fullScreenState == FullScreenState.ENABLED
                              ? Icons.fullscreen_exit
                              : Icons.fullscreen,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                      onTap: () {
                        if (playerValue.fullScreenState == FullScreenState.ENABLED) {
                          widget.controller.disableFullScreen();
                        } else {
                          widget.controller.enableFullScreen();
                        }
                      },
                    ),
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
            child: CustomProgressBar(
              controller: widget.controller,
              progressBarTheme: widget.progressBarTheme,
            ),
          ),
        ],
      ],
    );
  }
}
