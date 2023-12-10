part of 'video_bloc.dart';

@freezed
class VideoEvent with _$VideoEvent {
  const factory VideoEvent.playNetworkVideo({
    required String videoId,
    String? title,
    String? thumbnail,
    String? url,
  }) = _PlayNetwork;

  const factory VideoEvent.closeAdd() = _CloseAdd;

  const factory VideoEvent.playCashedVideo({
    required Video video,
  }) = _PlayCashed;

  const factory VideoEvent.remove() = _Remove;

  const factory VideoEvent.expand() = _ExpandMiniplayer;

  const factory VideoEvent.minimize() = _MinimizeMiniplayer;
}
