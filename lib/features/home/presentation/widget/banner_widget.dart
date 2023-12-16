import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:video_gozle/core/app_utils.dart';
import 'package:video_gozle/features/home/domain/models/banner.dart' as BannerModel;
import 'package:video_gozle/generated/l10n.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({
    super.key,
    required this.banner,
  });

  final BannerModel.Banner? banner;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: CachedNetworkImage(
                imageUrl: banner?.image ?? "",
                errorWidget: (_, __, ___) => Container(),
                placeholder: (_, __) => Container(),
                fit: BoxFit.cover,
                cacheManager: CustomCacheManager.instance,
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              banner?.text ?? '',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  banner?.description ?? '',
                  style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                ),
              ),
              const Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Ad",
                  style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
                ),
              )
            ],
          ),
          ElevatedButton(
            style: const ButtonStyle(
                alignment: Alignment.center, minimumSize: MaterialStatePropertyAll(Size.fromHeight(40))),
            onPressed: () {
              launchUrlString(banner?.link ?? '');
            },
            child: Text(S.current.go),
          )
        ],
      ),
    );
  }
}
