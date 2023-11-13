import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:video_gozle/core/failure/failure.dart';
import 'package:video_gozle/features/video/domain/usecases/video_use_cases.dart';
import 'package:video_gozle/injection.dart';

part 'comment_post_state.dart';
part 'comment_post_cubit.freezed.dart';

class CommentPostCubit extends Cubit<CommentPostState> {
  CommentPostCubit() : super(const CommentPostState.initial());

  VideoUseCases get _videoUseCases => locator<VideoUseCases>();

  Future<void> postComment(String message, String videoId) async {
    emit(const CommentPostState.posting());

    final result = await _videoUseCases.postComment(
      message: message,
      videoId: videoId,
    );

    result.fold(
      (failure) {
        if (failure is SocketFailure) {
          postComment(message, videoId);
        } else {
          emit(CommentPostState.failed(falure: failure));
        }
      },
      (_) => emit(const CommentPostState.success()),
    );
  }
}
