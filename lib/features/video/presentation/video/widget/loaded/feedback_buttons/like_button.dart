import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:video_gozle/core/app_assets.dart';
import 'package:video_gozle/core/app_utils.dart';
import 'package:video_gozle/core/theme.dart';
import 'package:video_gozle/features/video/presentation/video/logic/video_like/video_like_cubit.dart';

import '../../../../../../../generated/l10n.dart';
import '../subcribe_alert_dialog.dart';

class LikeButton extends StatefulWidget {
  const LikeButton({super.key});

  @override
  State<LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<VideoLikeCubit, VideoLikeState>(
      listener: (context, state) {
        state.whenOrNull(
          unauthenticated: (likesCount) async {
            SubscribeAlertDialog.show(context, S.current.want_to_like);
          },
        );
      },
      builder: (context, state) {
        final isLiked = state.when(
          liked: (likesCount) => true,
          notLiked: (likesCount) => false,
          unauthenticated: (likesCount) => false,
        );
        return ElevatedButton(
          style: ButtonStyle(
            padding: const MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 20)),
            backgroundColor: const MaterialStatePropertyAll(Colors.transparent),
            elevation: const MaterialStatePropertyAll(0),
            foregroundColor: isLiked
                ? MaterialStatePropertyAll(context.theme.primaryColor)
                : MaterialStatePropertyAll(context.theme.disabledColor),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
                side: isLiked
                    ? BorderSide(color: context.theme.primaryColor)
                    : BorderSide(color: context.theme.disabledColor),
              ),
            ),
          ),
          onPressed: () async {
            if (isLoading) return;

            setState(() {
              isLoading = true;
            });

            if (isLiked) {
              await context.read<VideoLikeCubit>().removeLike();
            } else {
              await context.read<VideoLikeCubit>().likeVideo();
            }

            setState(() {
              isLoading = false;
            });
          },
          child: Row(
            children: [
              SvgPicture.asset(
                isLiked ? AppAssets.likeFilledIcon : AppAssets.likeIcon,
                colorFilter: ColorFilter.mode(
                  isLiked ? context.theme.primaryColor : context.theme.disabledColor,
                  BlendMode.srcIn,
                ),
              ),
              const SizedBox(width: 10),
              Text(state.when(
                liked: (likesCount) {
                  return AppUtils.compact(likesCount);
                },
                notLiked: (likesCount) {
                  return AppUtils.compact(likesCount);
                },
                unauthenticated: (likesCount) {
                  return AppUtils.compact(likesCount);
                },
              ),),
            ],
          ),
        );
      },
    );
  }
}
