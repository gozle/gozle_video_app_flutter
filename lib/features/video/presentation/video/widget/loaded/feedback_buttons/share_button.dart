import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:video_gozle/core/app_assets.dart';
import 'package:video_gozle/core/app_utils.dart';
import 'package:video_gozle/core/theme.dart';
import 'package:video_gozle/generated/l10n.dart';

class ShareButton extends StatelessWidget {
  final String videoId;
  const ShareButton({super.key, required this.videoId});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        padding: const MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 20)),
        backgroundColor: const MaterialStatePropertyAll(Colors.transparent),
        elevation: const MaterialStatePropertyAll(0),
        foregroundColor: MaterialStatePropertyAll(context.theme.disabledColor),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
            side: BorderSide(color: context.theme.disabledColor),
          ),
        ),
      ),
      onPressed: () async {
        AppUtils.shareVideo(videoId: videoId);
      },
      child: Row(
        children: [
          SvgPicture.asset(
            AppAssets.shareIcon,
            colorFilter: ColorFilter.mode(
              context.theme.disabledColor,
              BlendMode.srcIn,
            ),
          ),
          const SizedBox(width: 10),
          Text(S.current.share),
        ],
      ),
    );
  }
}
