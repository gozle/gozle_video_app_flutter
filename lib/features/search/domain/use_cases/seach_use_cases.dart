import 'package:dartz/dartz.dart';
import 'package:video_gozle/core/failure/failure.dart';
import 'package:video_gozle/features/channel/domain/models/channel_model.dart';
import 'package:video_gozle/features/global/domain/models/video_model.dart';
import 'package:video_gozle/features/search/domain/repository/search_repository.dart';

class SearchUseCases {
  final SearchRepository searchRepository;

  SearchUseCases({required this.searchRepository});

  Future<Either<Failure, List<Video>>> searchVideos({
    required String query,
    required int amount,
    required int page,
  }) async {
    return await searchRepository.searchVideos(
      query: query,
      amount: amount,
      page: page,
    );
  }

  Future<Either<Failure, List<Channel>>> searchChannels({
    required String query,
    required int amount,
    required int page,
  }) async {
    return await searchRepository.searchChannels(
      query: query,
      amount: amount,
      page: page,
    );
  }

  List<String> restoreSearchHistory() {
    return searchRepository.restoreSearchHistory();
  }

  void saveSearchHistory({required List<String> searchHistory}) {
    return searchRepository.saveSearchHistory(searchHistory: searchHistory);
  }
}
