import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:video_gozle/core/app_utils.dart';
import 'package:video_gozle/core/theme.dart';
import 'package:video_gozle/features/home/domain/models/banner.dart' as BannerModel;
import 'package:video_gozle/generated/l10n.dart';

class BannerWidget extends StatefulWidget {
  const BannerWidget({
    super.key,
    required this.banner,
  });

  final BannerModel.Banner? banner;

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
          const SizedBox(height: 5),
          ExpansionTile(
            tilePadding: const EdgeInsets.all(0),
            onExpansionChanged: (value) {
              isExpanded = value;
              setState(() {
                //no-op
              });
            },
            title: Text(widget.banner?.text ?? '', style: Theme.of(context).textTheme.titleLarge),
            subtitle: !isExpanded!
                ? Text(
                    widget.banner?.description ?? '',
                    maxLines: 2,
                    style: Theme.of(context).textTheme.titleSmall,
                  )
                : null,
            trailing: const Text('more'),
            expandedCrossAxisAlignment: CrossAxisAlignment.start,
            collapsedIconColor: context.theme.brightness == Brightness.dark ? Colors.white : null,
            children: [
              Text(
                widget.banner?.description ?? '',
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ],
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
