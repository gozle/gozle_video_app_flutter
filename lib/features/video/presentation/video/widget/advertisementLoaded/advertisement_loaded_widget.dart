import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_gozle/features/video/domain/model/video_ads_model.dart';
import 'package:video_gozle/generated/l10n.dart';

class AdvertisementLoadedWidget extends StatelessWidget {
  final VideoAdsModel videoAd;
  const AdvertisementLoadedWidget({
    super.key,
    required this.videoAd,
  });

  launcLink(String url) async {
    try {
      Uri? uri = Uri.tryParse(url);
      if (uri != null) {
        await launchUrl(uri);
      }
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ExpansionTile(
        title: Row(
          children: [
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  videoAd.text,
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                ),
                Text(
                  videoAd.status,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ],
            )),
            if (videoAd.link != null) buildBtn(),
          ],
        ),
        initiallyExpanded: true,
        // subtitle: Text(videoAd.status),
        expandedCrossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              videoAd.description,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
          ),
          const Divider(),
          if (videoAd.link != null)
            Container(
              margin: const EdgeInsets.only(
                bottom: 20,
                left: 16,
                right: 16,
                top: 16,
              ),
              height: 44,
              width: double.infinity,
              child: buildBtn(),
            ),
        ],
      ),
    );
  }

  buildBtn() {
    return ElevatedButton(
      onPressed: () {
        launcLink(videoAd.link!);
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            30,
          ),
        ),
      ),
      child: Text(S.current.install),
    );
  }
}
