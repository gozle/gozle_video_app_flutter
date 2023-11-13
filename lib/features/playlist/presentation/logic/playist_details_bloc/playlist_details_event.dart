part of 'playlist_details_bloc.dart';

@freezed
class PlaylistDetailsEvent with _$PlaylistDetailsEvent {
  const factory PlaylistDetailsEvent.started() = _Started;
}