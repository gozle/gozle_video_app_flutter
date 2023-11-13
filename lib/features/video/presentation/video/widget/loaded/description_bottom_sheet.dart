import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:video_gozle/core/theme.dart';
import 'package:video_gozle/features/global/domain/models/video_model.dart';
import 'package:video_gozle/generated/l10n.dart';

class DescriptionBottomSheet extends StatelessWidget {
  final Video video;
  const DescriptionBottomSheet({
    Key? key,
    required this.video,
  }) : super(key: key);

  Widget dataItem({
    required String dataInfo,
    required String dataName,
    required BuildContext context,
  }) {
    return Flexible(
      child: Column(
        children: [
          Text(
            dataInfo,
            style: Theme.of(context).textTheme.titleLarge,
            textAlign: TextAlign.center,
            maxLines: 1,
          ),
          const SizedBox(height: 5),
          Text(
            dataName,
            style: Theme.of(context).textTheme.titleSmall,
            textAlign: TextAlign.center,
            maxLines: 2,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          sliver: SliverToBoxAdapter(
            child: Text(
              video.title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          sliver: SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                dataItem(context: context, dataInfo: video.view.toString(), dataName: S.of(context).views),
                dataItem(context: context, dataInfo: video.likesCount.toString(), dataName: S.current.likes),
                // dataItem(
                //     context: context,
                //     dataInfo: Utils.dateTimeToDayMonth(video.date),
                //     dataName: Utils.dateTimeToYear(video.date)),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(15),
          sliver: SliverToBoxAdapter(
            child: Linkify(
              onOpen: (link) async {
                launchUrlString(link.url, mode: LaunchMode.externalApplication);
              },
              text: video.description,
              style: Theme.of(context).textTheme.bodySmall,
              linkStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: AppColors.GOZLE_COLOR,
                    decoration: TextDecoration.underline,
                    decorationColor: AppColors.GOZLE_COLOR,
                  ),
            ),
          ),
        )
      ],
    );
  }
}
