import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_gozle/core/app_utils.dart';
import 'package:video_gozle/core/theme.dart';
import 'package:video_gozle/features/global/domain/models/video_model.dart';
import 'package:video_gozle/features/global/presentation/widget/place_holder.dart';
import 'package:video_gozle/features/global/presentation/widget/video_item_widget/channel_avatar_widget.dart';
import 'package:video_gozle/features/global/presentation/widget/video_item_widget/video_item_thumbnail.dart';
import 'package:video_gozle/features/video/presentation/video/logic/video_bloc/video_bloc.dart';

class HorizontalVideoItemWidget extends StatelessWidget {
  final Video video;

  const HorizontalVideoItemWidget({
    super.key,
    required this.video,
  });

  static Widget placeHolder(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      child: Column(
        children: [
          const AspectRatio(
            aspectRatio: 16 / 9,
            child: CustomPlaceholder(
              borderRadius: 10,
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
        padding: const EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).orientation == Orientation.portrait
                  ? MediaQuery.of(context).size.width * 0.45
                  : MediaQuery.of(context).size.width * 0.3,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: VideoThumbnailWidget(
                  thumbnail: video.thumbnailUrl,
                  borderRadius: 10,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    video.title,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: context.textTheme.titleLarge,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    '${video.channelName ?? ''} • ${AppUtils.timeAgo(video.date)}',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: context.textTheme.titleSmall,
                  ),
                  const SizedBox(height: 5),
                  ChannelAvatarWidget(
                    video: video,
                    radius: 15,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
