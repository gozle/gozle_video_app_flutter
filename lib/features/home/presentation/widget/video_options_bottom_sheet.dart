import 'package:flutter/material.dart';
import 'package:video_gozle/core/app_utils.dart';
import 'package:video_gozle/features/global/domain/models/video_model.dart';
import 'package:video_gozle/features/global/presentation/widget/custom_snack_bar.dart';
import 'package:video_gozle/features/global/presentation/widget/menu_item_widget.dart';
import 'package:video_gozle/generated/l10n.dart';

class VideoOptionsBottomSheet {
  static void show(BuildContext context, {required Video video}) {
    showModalBottomSheet(
      context: context,
      useSafeArea: true,
      useRootNavigator: true,
      isScrollControlled: true,
      builder: (context) {
        return SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // MenuItemWidget(
                //   onTap: () {},
                //   label: 'Смотреть позже',
                // ),
                // MenuItemWidget(
                //   onTap: () {},
                //   label: 'Скачать видео',
                // ),
                MenuItemWidget(
                  onTap: () {
                    AppUtils.shareVideo(videoId: video.pk);
                  },
                  label: S.current.share,
                ),
                MenuItemWidget(
                  label: S.current.report,
                  onTap: () {
                    Navigator.of(context).pop();

                    CustomSnackBar.show(context, message: S.current.exclude_video_from_preferences);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
