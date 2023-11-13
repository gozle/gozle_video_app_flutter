import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:video_gozle/core/app_assets.dart';
import 'package:video_gozle/core/theme.dart';

import 'package:video_gozle/features/global/presentation/widget/custom_snack_bar.dart';
import 'package:video_gozle/generated/l10n.dart';

class ReportButton extends StatelessWidget {
  final String videoId;
  const ReportButton({super.key, required this.videoId});

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
      onPressed: () {
        CustomSnackBar.show(context, message: S.current.exclude_video_from_preferences);
      },
      child: Row(
        children: [
          SvgPicture.asset(
            AppAssets.reportIcon,
            colorFilter: ColorFilter.mode(
              context.theme.disabledColor,
              BlendMode.srcIn,
            ),
          ),
          const SizedBox(width: 10),
          Text(S.current.report),
        ],
      ),
    );
  }
}
