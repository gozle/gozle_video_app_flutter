import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:video_gozle/core/failure/failure.dart';
import 'package:video_gozle/features/channel/domain/models/channel_model.dart';
import 'package:video_gozle/features/channel/domain/use_cases/channel_use_cases.dart';
import 'package:video_gozle/injection.dart';

part 'channel_details_state.dart';
part 'channel_details_cubit.freezed.dart';

class ChannelDetailsCubit extends Cubit<ChannelDetailsState> {
  final String channelId;

  ChannelDetailsCubit({required this.channelId}) : super(const ChannelDetailsState.loading()) {
    load();
  }

  ChannelUseCases get channelUseCases => locator<ChannelUseCases>();

  void load() async {
    emit(const ChannelDetailsState.loading());

    final result = await channelUseCases.getChannelDetails(channelId: channelId);

    result.fold(
      (failure) {
        if (failure is SocketFailure) {
          Future.delayed(const Duration(seconds: 5)).then((value) {
            load();
          });
        } else {
          emit(ChannelDetailsState.error(
            falure: failure,
          ));
        }
      },
      (channel) {
        emit(ChannelDetailsState.loaded(channel: channel));
      },
    );
  }
}
