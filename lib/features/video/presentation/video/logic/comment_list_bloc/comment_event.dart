part of 'comment_bloc.dart';

@freezed
class CommentEvent with _$CommentEvent {
  const factory CommentEvent.loadComments({required String videoId}) = _LoadComments;
  const factory CommentEvent.loadMoreComments({required List<Comment> oldComments, required String videoId}) =
      _LoadMoreComments;
}
