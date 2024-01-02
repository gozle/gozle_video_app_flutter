import 'package:cached_network_image/cached_network_image.dart';
import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:video_gozle/core/app_utils.dart';
import 'package:video_gozle/core/theme.dart';
import 'package:video_gozle/features/home/domain/models/banner.dart' as BannerModel;

import '../../../../generated/l10n.dart';
import '../../../global/presentation/widget/place_holder.dart';

class BannerWidget extends StatefulWidget {
  const BannerWidget({
    super.key,
    required this.banner,
  });

  final BannerModel.Banner? banner;

  static Widget placeHolder(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(18, 18, 18, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: const CustomPlaceholder(),
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
            height: 25,
            width: MediaQuery.of(context).size.width * 0.7,
            child: const CustomPlaceholder(),
          ),
          const SizedBox(height: 15),
          SizedBox(
            height: 25,
            width: MediaQuery.of(context).size.width / 2,
            child: const CustomPlaceholder(),
          ),
          const SizedBox(height: 15),
          const SizedBox(
            height: 40,
            child: CustomPlaceholder(),
          ),
        ],
      ),
    );
  }

  @override
  State<BannerWidget> createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget> {
  bool? isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(18, 18, 18, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: CachedNetworkImage(
                imageUrl: widget.banner?.image ?? "",
                errorWidget: (_, __, ___) => Container(),
                placeholder: (_, __) => Container(),
                fit: BoxFit.cover,
                cacheManager: CustomCacheManager.instance,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            widget.banner?.text ?? '',
            maxLines: !isExpanded! ? 1 : null,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 10),
          ExpandableText(
            widget.banner?.description ?? '',
            style: context.textTheme.titleSmall,
            expandText: S.current.more,
            collapseText: S.current.hide,
            maxLines: 2,
            linkColor: Colors.blue,
            animation: true,
            expandOnTextTap: true,
            collapseOnTextTap: true,
            animationCurve: Curves.ease,
            animationDuration: const Duration(milliseconds: 320),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            style: const ButtonStyle(
              alignment: Alignment.center,
              minimumSize: MaterialStatePropertyAll(
                Size.fromHeight(40),
              ),
            ),
            onPressed: () {
              launchUrlString(widget.banner?.link ?? '');
            },
            child: Text(S.current.go),
          )
        ],
      ),
    );
  }
}
