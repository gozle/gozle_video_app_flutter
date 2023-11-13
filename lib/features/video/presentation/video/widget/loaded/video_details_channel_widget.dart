import 'package:flutter/material.dart';
import 'package:video_gozle/features/channel/domain/models/channel_model.dart';
import 'package:video_gozle/features/global/domain/models/video_model.dart';
import 'package:video_gozle/features/global/presentation/widget/channel_item_widget/channel_list_item_widget.dart';

class VideoDetailsChannelWidget extends StatelessWidget {
  final Video video;

  const VideoDetailsChannelWidget({super.key, required this.video});

  @override
  Widget build(BuildContext context) {
    return ChannelListItemWidget(
      channel: Channel(
        channelAvatar: video.channelUrl,
        isSubscribed: video.isSubscribed,
        name: video.channelName,
        pk: video.channelId,
      ),
    );
  }
}
