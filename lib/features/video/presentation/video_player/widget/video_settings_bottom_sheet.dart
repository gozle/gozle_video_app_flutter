import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:video_gozle/core/theme.dart';
import 'package:video_gozle/features/global/presentation/widget/menu_item_widget.dart';
import 'package:video_gozle/features/video/presentation/video_player/controls/gozle_video/icons_assets.dart';
import 'package:video_gozle/features/video/presentation/video_player/world_video_player/world_video_player.dart';

class VideoSettingsBottomSheet {
  static show(
    BuildContext context, {
    required WorldVideoPlayerController worldVideoPlayerController,
  }) {
    showModalBottomSheet(
      context: context,
      enableDrag: true,
      useSafeArea: true,
      showDragHandle: true,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      builder: (_) {
        return SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  MenuItemWidget(
                    label:
                        'Качество • ${worldVideoPlayerController.value.currentVideoTrack?.dataQualityName}',
                    prefixIcon: SizedBox(
                      height: 22,
                      width: 22,
                      child: SvgPicture.asset(
                        PlayerIconsAssets.settingsIcon,
                        colorFilter: ColorFilter.mode(context.theme.iconTheme.color!, BlendMode.srcIn),
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                      VideoQualityBottomSheet.show(context,
                          worldVideoPlayerController: worldVideoPlayerController);
                    },
                  ),
                  MenuItemWidget(
                    label: 'Скорость воспроизведения •  ${worldVideoPlayerController.value.playbackRate}x',
                    prefixIcon: SizedBox(
                      height: 22,
                      width: 22,
                      child: SvgPicture.asset(
                        PlayerIconsAssets.playbackSpeedIcon,
                        colorFilter: ColorFilter.mode(context.theme.iconTheme.color!, BlendMode.srcIn),
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                      VideoPlaybackSpeedBottomSheet.show(context,
                          worldVideoPlayerController: worldVideoPlayerController);
                    },
                  ),
                  // MenuItemWidget(
                  //   label: 'Субтитры',
                  //   prefixIconAsset: IconsAssets.subtitleIcon,
                  //   prefixIconColor: Colors.black,
                  //   onTap: () {},
                  // ),
                  MenuItemWidget(
                    label: 'Повтор воспроизведения',
                    prefixIcon: SizedBox(
                      height: 22,
                      width: 22,
                      child: SvgPicture.asset(
                        PlayerIconsAssets.repeatIcon,
                        colorFilter: ColorFilter.mode(
                          context.theme.iconTheme.color!,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                    suffixIcon: worldVideoPlayerController.value.isLooping
                        ? SizedBox(height: 22, width: 22, child: Icon(Icons.check))
                        : SizedBox(),
                    onTap: () {
                      if (worldVideoPlayerController.value.isLooping) {
                        worldVideoPlayerController.disableLooping();
                      } else {
                        worldVideoPlayerController.enableLooping();
                      }
                      Navigator.of(context).pop();
                    },
                  ),
                  // MenuItemWidget(
                  //   label: 'Блокировка экрана',
                  //   prefixIconAsset: IconsAssets.lockIcon,
                  //   prefixIconColor: Colors.black,
                  //   onTap: () {},
                  // ),
                  const SizedBox(height: 24)
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class VideoQualityBottomSheet {
  static show(BuildContext context, {required WorldVideoPlayerController worldVideoPlayerController}) {
    showModalBottomSheet(
      context: context,
      enableDrag: true,
      useSafeArea: true,
      showDragHandle: true,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      builder: (_) {
        return SafeArea(
          child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ...worldVideoPlayerController.value.videoTraks!
                        .map((e) => MenuItemWidget(
                              label: e.dataQualityName,
                              onTap: () {
                                worldVideoPlayerController.changeVideoQuality(m3u8data: e);

                                Navigator.of(context).pop();
                              },
                            ))
                        .toList(),
                    SizedBox(height: 24),
                  ],
                ),
              )),
        );
      },
    );
  }
}

class VideoPlaybackSpeedBottomSheet {
  static show(BuildContext context, {required WorldVideoPlayerController worldVideoPlayerController}) {
    showModalBottomSheet(
      context: context,
      enableDrag: true,
      useSafeArea: true,
      showDragHandle: true,
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      builder: (_) {
        return SafeArea(
          child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: SingleChildScrollView(
                child: Column(children: [
                  ...[
                    PlaybackRate.quarter,
                    PlaybackRate.half,
                    PlaybackRate.threeQuarter,
                    PlaybackRate.normal,
                    PlaybackRate.oneAndAQuarter,
                    PlaybackRate.oneAndAHalf,
                    PlaybackRate.oneAndAThreeQuarter,
                    PlaybackRate.twice,
                  ]
                      .map((playbackRate) => MenuItemWidget(
                            label: '$playbackRate',
                            onTap: () {
                              worldVideoPlayerController.changePlaybackRate(playbackRate: playbackRate);

                              Navigator.of(context).pop();
                            },
                          ))
                      .toList(),
                  const SizedBox(height: 24),
                ]),
              )),
        );
      },
    );
  }
}
