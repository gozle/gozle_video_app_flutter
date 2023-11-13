import 'package:flutter/material.dart';
import 'package:video_gozle/features/global/domain/models/video_model.dart';
import 'package:video_gozle/features/global/presentation/widget/ink_wrapper.dart';

class ChannelAvatarWidget extends StatelessWidget {
  const ChannelAvatarWidget({
    super.key,
    required this.video,
    required this.radius,
  });

  final Video video;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return InkWrapper(
      onTap: () {},
      borderRadius: BorderRadius.circular(50),
      child: CircleAvatar(
        radius: radius,
        backgroundColor: Theme.of(context).secondaryHeaderColor,
        backgroundImage: Image.network('${video.channelUrl}').image,
      ),
    );
  }
}
