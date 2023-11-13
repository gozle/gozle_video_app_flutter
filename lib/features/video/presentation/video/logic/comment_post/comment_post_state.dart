part of 'comment_post_cubit.dart';

@freezed
class CommentPostState with _$CommentPostState {
  const factory CommentPostState.initial() = _Initial;
  const factory CommentPostState.posting() = _Posting;
  const factory CommentPostState.success() = _Success;
  const factory CommentPostState.failed({
    required Failure falure,
  }) = _Failed;
}
