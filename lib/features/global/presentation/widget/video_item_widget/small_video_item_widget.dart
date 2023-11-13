import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_gozle/core/app_utils.dart';
import 'package:video_gozle/core/theme.dart';
import 'package:video_gozle/features/global/domain/models/video_model.dart';
import 'package:video_gozle/features/global/presentation/widget/ink_wrapper.dart';
import 'package:video_gozle/features/global/presentation/widget/place_holder.dart';
import 'package:video_gozle/features/global/presentation/widget/video_item_widget/video_item_thumbnail.dart';
import 'package:video_gozle/features/home/presentation/widget/video_options_bottom_sheet.dart';
import 'package:video_gozle/features/video/presentation/video/logic/video_bloc/video_bloc.dart';

class SmallVideoItemWidget extends StatelessWidget {
  final Video video;

  const SmallVideoItemWidget({
    super.key,
    required this.video,
  });

  static Widget placeHolder(BuildContext context) {
    return const SizedBox(
        width: 170,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: CustomPlaceholder(
                borderRadius: 10,
              ),
            ),
            SizedBox(height: 5),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15,
                  width: 150,
                  child: CustomPlaceholder(),
                ),
                SizedBox(height: 5),
                SizedBox(
                  height: 15,
                  width: 100,
                  child: CustomPlaceholder(),
                ),
                SizedBox(height: 5),
              ],
            ),
            SizedBox(height: 10),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 170,
      child: InkWell(
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
        borderRadius: BorderRadius.circular(5),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: VideoThumbnailWidget(
                thumbnail: video.thumbnailUrl,
                borderRadius: 5,
              ),
            ),
            const SizedBox(height: 5),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        video.title,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: context.textTheme.titleMedium?.copyWith(fontSize: 12),
                      ),
                    ),
                    InkWrapper(
                      child: Container(
                        padding: const EdgeInsets.only(left: 5, top: 5, bottom: 5),
                        child: const Icon(
                          Icons.more_vert,
                          size: 20,
                        ),
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
                const SizedBox(height: 5),
                Text(
                  '${AppUtils.formatViews(video.view)} • ${video.channelName ?? ''} • ${AppUtils.timeAgo(video.date)}',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: context.textTheme.titleSmall?.copyWith(fontSize: 9),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
