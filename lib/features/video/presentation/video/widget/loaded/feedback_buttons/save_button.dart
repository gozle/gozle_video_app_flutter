import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:video_gozle/core/app_assets.dart';
import 'package:video_gozle/generated/l10n.dart';

class SaveButton extends StatelessWidget {
  final String videoId;
  const SaveButton({super.key, required this.videoId});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        padding: const MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 20)),
        backgroundColor: const MaterialStatePropertyAll(Colors.white),
        elevation: const MaterialStatePropertyAll(0),
        foregroundColor: const MaterialStatePropertyAll(Colors.black54),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
            side: const BorderSide(color: Colors.black54),
          ),
        ),
      ),
      onPressed: () async {
        // todo download video
      },
      child: Row(
        children: [
          SvgPicture.asset(
            AppAssets.downloadIcon,
            colorFilter: const ColorFilter.mode(
              Colors.black54,
              BlendMode.srcIn,
            ),
          ),
          const SizedBox(width: 10),
          Text(S.current.download),
        ],
      ),
    );
  }
}
