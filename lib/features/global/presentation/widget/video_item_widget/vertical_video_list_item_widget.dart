import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_gozle/core/app_utils.dart';
import 'package:video_gozle/core/theme.dart';
import 'package:video_gozle/features/channel/presentation/screen/channel_details_screen.dart';
import 'package:video_gozle/features/global/domain/models/video_model.dart';
import 'package:video_gozle/features/global/presentation/widget/ink_wrapper.dart';
import 'package:video_gozle/features/global/presentation/widget/place_holder.dart';
import 'package:video_gozle/features/global/presentation/widget/video_item_widget/channel_avatar_widget.dart';
import 'package:video_gozle/features/global/presentation/widget/video_item_widget/video_duration_widget.dart';
import 'package:video_gozle/features/global/presentation/widget/video_item_widget/video_item_thumbnail.dart';
import 'package:video_gozle/features/home/presentation/widget/video_options_bottom_sheet.dart';
import 'package:video_gozle/features/nav/presentation/widget/nav_key_provider.dart';
import 'package:video_gozle/features/video/presentation/video/logic/video_bloc/video_bloc.dart';

class VerticalVideoItemWidget extends StatelessWidget {
  final Video video;

  const VerticalVideoItemWidget({
    super.key,
    required this.video,
  });

  static Widget placeHolder(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: const CustomPlaceholder(),
            ),
          ),
          const SizedBox(height: 15),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(width: 10),
              const SizedBox(
                height: 45,
                width: 45,
                child: ClipOval(child: CustomPlaceholder()),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20,
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: const CustomPlaceholder(),
                  ),
                  const SizedBox(height: 5),
                  SizedBox(
                    height: 20,
                    width: MediaQuery.of(context).size.width / 2,
                    child: const CustomPlaceholder(),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.read<VideoBloc>().add(
              VideoEvent.playNetworkVideo(
                videoId: video.pk,
                url: video.m3u8,
                thumbnail: video.thumbnailUrl,
                title: video.title,
              ),
            );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        child: Column(
          children: [
            Stack(
              children: [
                VideoThumbnailWidget(
                  thumbnail: video.thumbnailUrl,
                  borderRadius: 10,
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: VideoDurationWidget(video: video),
                )
              ],
            ),
            const SizedBox(height: 15),
            Stack(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(width: 10),
                    InkWrapper(
                      borderRadius: BorderRadius.circular(50),
                      onTap: () {
                        context.read<VideoBloc>().add(const VideoEvent.minimize());

                        final navigator = NavKeyProvider.maybeOf(context)?.navKey.currentState ??
                            Navigator.of(context);

                        navigator.pushNamed(ChannelDetailsScreen.routeName, arguments: {
                          'channel_id': video.channelId,
                          'channel_name': video.channelName,
                        });
                      },
                      child: ChannelAvatarWidget(
                        video: video,
                        radius: 23,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            video.title,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: context.textTheme.titleLarge,
                            //const TextStyle(
                            //   color: Color(0xFF393F45),
                            //   fontSize: 16,
                            //   fontWeight: FontWeight.w600,
                            // )
                          ),
                          const SizedBox(height: 5),
                          Text(
                            '${AppUtils.formatViews(video.view)} • ${video.channelName ?? ''} • ${AppUtils.timeAgo(video.date)}',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: context.textTheme.titleSmall,
                            // TextStyle(
                            //   color: const Color(0xFF393F45).withOpacity(0.35),
                            //   fontSize: 12,
                            //   fontWeight: FontWeight.w500,
                            // ),
                          ),
                        ],
                      ),
                    ),
                    InkWrapper(
                      child: Container(
                        padding: const EdgeInsets.only(left: 10, top: 5, bottom: 10),
                        child: const Icon(Icons.more_vert),
                      ),
                      onTap: () {
                        VideoOptionsBottomSheet.show(
                          context,
                          video: video,
                        );
                      },
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
