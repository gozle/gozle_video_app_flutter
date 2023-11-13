import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:video_gozle/core/failure/failure.dart';
import 'package:video_gozle/features/video/domain/model/comment_model.dart';
import 'package:video_gozle/features/video/domain/usecases/video_use_cases.dart';
import 'package:video_gozle/injection.dart';

part 'comment_event.dart';
part 'comment_state.dart';
part 'comment_bloc.freezed.dart';

class CommentBloc extends Bloc<CommentEvent, CommentState> {
  CommentBloc() : super(const CommentState.loading(oldComments: [])) {
    on<_LoadComments>(_onLoadComments);
    on<_LoadMoreComments>(_onLoadMoreComments);
  }

  VideoUseCases get _videoUseCases => locator<VideoUseCases>();

  static const int amount = 10;

  Future<void> _onLoadComments(
    _LoadComments event,
    Emitter<CommentState> emit,
  ) async {
    emit(const CommentState.loading(oldComments: []));
    final result = await _videoUseCases.getCommentsByVideo(page: 1, amount: amount, videoId: event.videoId);

    result.fold(
      (failure) {
        if (failure is SocketFailure) {
          Future.delayed(const Duration(seconds: 5)).then((value) {
            add(event);
          });
        } else {
          emit(CommentState.error(
            oldComments: [],
            lastEvent: event,
            falure: failure,
          ));
        }
      },
      (comments) => emit(CommentState.loaded(comments: comments, hasReachedMax: comments.length != amount)),
    );
  }

  Future<void> _onLoadMoreComments(
    _LoadMoreComments event,
    Emitter<CommentState> emit,
  ) async {
    emit(CommentState.loading(oldComments: event.oldComments));

    final nextPage = (event.oldComments.length / amount).round() + 1;

    final result =
        await _videoUseCases.getCommentsByVideo(page: nextPage, amount: amount, videoId: event.videoId);

    result.fold(
      (failure) {
        if (failure is SocketFailure) {
          Future.delayed(const Duration(seconds: 5)).then((value) {
            add(event);
          });
        } else {
          emit(CommentState.error(
            lastEvent: event,
            falure: failure,
            oldComments: event.oldComments,
          ));
        }
      },
      (comments) => emit(CommentState.loaded(
          comments: event.oldComments + comments, hasReachedMax: comments.length != amount)),
    );
  }
}
