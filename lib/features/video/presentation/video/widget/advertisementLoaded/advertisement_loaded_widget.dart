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
    return Padding(
      padding: const EdgeInsets.all(16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Text(
              videoAd.text,
              style: const TextStyle(fontSize: 22),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 20)),
          SliverToBoxAdapter(
            child: Text(
              videoAd.description,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
          ),
          if (videoAd.link != null)
            SliverFillRemaining(
              child: Column(
                children: [
                  const Spacer(),
                  SizedBox(
                    height: 44,
                    width: double.infinity,
                    child: buildBtn(),
                  ),
                ],
              ),
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
      child: Text(S.current.go),
    );
  }
}
