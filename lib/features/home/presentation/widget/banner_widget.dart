import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/widgets.dart';
import 'package:video_gozle/core/app_utils.dart';
import 'package:video_gozle/features/home/domain/models/banner.dart'
    as BannerModel;

class BannerWidget extends StatelessWidget {
  const BannerWidget({
    super.key,
    required this.banner,
  });

  final BannerModel.Banner? banner;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: CachedNetworkImage(
        imageUrl: banner?.image ?? "",
        errorWidget: (_, __, ___) => Container(),
        placeholder: (_, __) => Container(),
        fit: BoxFit.cover,
        cacheManager: CustomCacheManager.instance,
      ),
    );
  }
}
