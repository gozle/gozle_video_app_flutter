import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:video_gozle/core/app_utils.dart';
import 'package:video_gozle/features/global/presentation/widget/place_holder.dart';

class VideoThumbnailWidget extends StatelessWidget {
  final String thumbnail;
  final double aspectRatio;
  final double borderRadius;

  const VideoThumbnailWidget({
    super.key,
    required this.thumbnail,
    this.aspectRatio = 16 / 9,
    this.borderRadius = 0,
  });

  @override
  Widget build(BuildContext context) {
    int memCacheWidth = 1080;
    int memCacheHeight = (memCacheWidth / aspectRatio).round();

    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: AspectRatio(
        aspectRatio: aspectRatio,
        child: CachedNetworkImage(
          imageUrl: thumbnail,
          errorWidget: (_, __, ___) => const CustomPlaceholder(),
          placeholder: (_, __) => const CustomPlaceholder(),
          fit: BoxFit.cover,
          cacheManager: CustomCacheManager.instance,
          memCacheHeight: memCacheHeight,
          memCacheWidth: memCacheWidth,
        ),
      ),
    );
  }
}
