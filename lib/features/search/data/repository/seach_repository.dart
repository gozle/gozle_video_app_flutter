import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:video_gozle/core/exception/exception.dart';
import 'package:video_gozle/core/failure/failure.dart';
import 'package:video_gozle/features/channel/domain/models/channel_model.dart';
import 'package:video_gozle/features/global/domain/models/video_model.dart';
import 'package:video_gozle/features/search/data/data_source/search_api_clienat.dart';
import 'package:video_gozle/features/search/data/data_source/search_storage.dart';
import 'package:video_gozle/features/search/domain/repository/search_repository.dart';

class SearchRepositoryImpl extends SearchRepository {
  final SearchApiClient searchApiClient;
  final SearchStorage searchStorage;

  SearchRepositoryImpl({
    required this.searchApiClient,
    required this.searchStorage,
  });

  @override
  Future<Either<Failure, List<Video>>> searchVideos({
    required String query,
    required int amount,
    required int page,
  }) async {
    try {
      final List<Video> videoList = await searchApiClient.getVideoByQuery(
          query: query, amount: amount, page: page);
      return right(videoList);
    } on ServerException catch (_) {
      return left(ServerFailure());
    } on InternetException catch (_) {
      return left(SocketFailure());
    } on NotFoundException catch (_) {
      return left(NotFoundFailure());
    } on AuthenticationException catch (_) {
      return left(AuthenticationFailure());
    } catch (e) {
      return left(UnexpectedFailure());
    }
  }

  @override
  Future<Either<Failure, List<Channel>>> searchChannels({
    required String query,
    required int amount,
    required int page,
  }) async {
    try {
      final List<Channel> videoList = await searchApiClient.getChannelByQuery(
          query: query, amount: amount, page: page);
      return right(videoList);
    } on ServerException catch (_) {
      return left(ServerFailure());
    } on InternetException catch (_) {
      return left(SocketFailure());
    } on NotFoundException catch (_) {
      return left(NotFoundFailure());
    } on AuthenticationException catch (_) {
      return left(AuthenticationFailure());
    } catch (e) {
      return left(UnexpectedFailure());
    }
  }

  @override
  List<String> restoreSearchHistory() {
    final List<String> searchHistory = searchStorage.restoreSearchHistory();
    return searchHistory;
  }

  @override
  void saveSearchHistory({required List<String> searchHistory}) {
    try {
      searchStorage.saveSearchHistory(searchHistory: searchHistory);
    } catch (e) {
      log(e.toString());
    }
  }
}
