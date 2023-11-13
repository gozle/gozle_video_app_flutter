import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_gozle/features/video/presentation/video/logic/video_bloc/video_bloc.dart';
import 'package:video_gozle/generated/l10n.dart';

class ErrorVideoDetailsWidget extends StatelessWidget {
  final String message;
  final String videoId;
  const ErrorVideoDetailsWidget({super.key, required this.message, required this.videoId});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                message,
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                child: Text(S.current.retry),
                onPressed: () {
                  context.read<VideoBloc>().add(VideoEvent.playNetworkVideo(
                        videoId: videoId,
                      ));
                },
              )
            ],
          ),
        )
      ],
    );
  }
}
