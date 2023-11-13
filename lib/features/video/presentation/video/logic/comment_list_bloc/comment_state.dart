part of 'comment_bloc.dart';

@freezed
class CommentState with _$CommentState {
  const factory CommentState.initial() = _Initial;

  const factory CommentState.loading({
    required List<Comment> oldComments,
  }) = _Loading;

  const factory CommentState.loaded({
    required List<Comment> comments,
    required bool hasReachedMax,
  }) = _Loaded;

  const factory CommentState.error({
    required CommentEvent lastEvent,
    required Failure falure,
    required List<Comment> oldComments,
  }) = _Error;
}
