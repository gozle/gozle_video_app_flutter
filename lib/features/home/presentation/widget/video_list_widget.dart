import 'package:flutter/material.dart';
import 'package:video_gozle/features/global/domain/models/video_list_item_type.dart';
import 'package:video_gozle/features/global/domain/models/video_model.dart';
import 'package:video_gozle/features/global/presentation/widget/video_item_widget/horizontal_video_list_item_widget.dart';
import 'package:video_gozle/features/global/presentation/widget/video_item_widget/small_video_item_widget.dart';
import 'package:video_gozle/features/global/presentation/widget/video_item_widget/vertical_video_list_item_widget.dart';

class VideoListWidget extends StatelessWidget {
  final List<Video> videos;
  final VideoListType videoListType;

  const VideoListWidget({
    super.key,
    required this.videos,
    this.videoListType = VideoListType.AUTO,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) {
        final orientation = MediaQuery.of(context).orientation;
        final Widget videoListItemWidget = switch (videoListType) {
          VideoListType.AUTO => Builder(
              builder: (context) {
                if (orientation == Orientation.portrait) {
                  return VerticalVideoItemWidget(
                    video: videos[index],
                  );
                } else {
                  return HorizontalVideoItemWidget(
                    video: videos[index],
                  );
                }
              },
            ),
          VideoListType.PLACEHOLDER => Builder(
              builder: (context) {
                if (orientation == Orientation.portrait) {
                  return VerticalVideoItemWidget.placeHolder(context);
                } else {
                  return HorizontalVideoItemWidget.placeHolder(context);
                }
              },
            ),
          VideoListType.HORIZONTAL => HorizontalVideoItemWidget(video: videos[index]),
          VideoListType.VERTICAL => VerticalVideoItemWidget(
              video: videos[index],
            ),
          VideoListType.SMALL => SmallVideoItemWidget(
              video: videos[index],
            ),
          VideoListType.HORIZONTAL_PLACEHOLDER => HorizontalVideoItemWidget.placeHolder(context),
          VideoListType.VERTICAL_PLACEHOLDER => VerticalVideoItemWidget.placeHolder(context),
          VideoListType.SMALL_PLACEHOLDER => SmallVideoItemWidget.placeHolder(context),
        };

        return Material(
          color: Colors.transparent,
          child: videoListItemWidget,
        );
      },
      itemCount: switch (videoListType) {
        VideoListType.HORIZONTAL_PLACEHOLDER => 5,
        VideoListType.PLACEHOLDER => 5,
        VideoListType.SMALL_PLACEHOLDER => 5,
        VideoListType.VERTICAL_PLACEHOLDER => 5,
        _ => videos.length,
      },
    );
  }
}
