import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'playlist_details_event.dart';
part 'playlist_details_state.dart';
part 'playlist_details_bloc.freezed.dart';

class PlaylistDetailsBloc extends Bloc<PlaylistDetailsEvent, PlaylistDetailsState> {
  PlaylistDetailsBloc() : super(_Initial()) {
    on<PlaylistDetailsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
