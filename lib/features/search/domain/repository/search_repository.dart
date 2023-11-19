import 'package:dartz/dartz.dart';
import 'package:video_gozle/core/failure/failure.dart';
import 'package:video_gozle/features/channel/domain/models/channel_model.dart';
import 'package:video_gozle/features/global/domain/models/video_model.dart';

abstract class SearchRepository {
  Future<Either<Failure, List<Video>>> searchVideos({
    required String query,
    required int amount,
    required int page,
  });
  Future<Either<Failure, List<Channel>>> searchChannels({
    required String query,
    required int amount,
    required int page,
  });
  List<String> restoreSearchHistory();

  void saveSearchHistory({required List<String> searchHistory});
}
