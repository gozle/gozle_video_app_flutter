import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_gozle/core/app_utils.dart';
import 'package:video_gozle/features/global/domain/models/video_model.dart';
import 'package:video_gozle/features/global/presentation/widget/ink_wrapper.dart';
import 'package:video_gozle/features/video/presentation/video/logic/video_bloc/video_bloc.dart';
import 'package:video_gozle/features/video/presentation/video/widget/loaded/description_bottom_sheet.dart';
import 'package:video_gozle/generated/l10n.dart';

class VideoDetailsTitleWidget extends StatelessWidget {
  final double videoDetailsBottomSheetHeight;
  const VideoDetailsTitleWidget({super.key, required this.videoDetailsBottomSheetHeight});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, bottom: 8, top: 15),
      child: BlocBuilder<VideoBloc, VideoState>(
        builder: (context, state) {
          return state.maybeWhen(
            loaded: (video) {
              return InkWrapper(
                onTap: () {
                  VideoDetailsBottomSheet.show(
                    context,
                    videoDetailsBottomSheetHeight: videoDetailsBottomSheetHeight,
                    video: video,
                  );
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      video.title,
                      maxLines: 2,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          '${AppUtils.formatViews(video.view)} • ${AppUtils.timeAgo(video.date)} • ${S.current.more}',
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
            loading: (videoId, title) {
              return Text(
                title ?? '',
                maxLines: 2,
                style: Theme.of(context).textTheme.titleLarge,
              );
            },
            orElse: () {
              return const SizedBox();
            },
          );
        },
      ),
    );
  }
}

class VideoDetailsBottomSheet {
  static void show(
    BuildContext context, {
    required double videoDetailsBottomSheetHeight,
    required Video video,
  }) {
    showModalBottomSheet(
      context: context,
      enableDrag: true,
      isScrollControlled: true,
      builder: (context) {
        return SizedBox(
          height: videoDetailsBottomSheetHeight,
          width: double.infinity,
          child: DescriptionBottomSheet(
            video: video,
          ),
        );
      },
    );
  }
}
