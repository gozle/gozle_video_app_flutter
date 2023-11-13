import 'package:dartz/dartz.dart';
import 'package:video_gozle/core/exception/exception.dart';
import 'package:video_gozle/core/failure/failure.dart';
import 'package:video_gozle/features/global/domain/models/video_model.dart';
import 'package:video_gozle/features/library/data/datasource/library_api_client.dart';
import 'package:video_gozle/features/library/domain/repository/history_repository.dart';

class LibraryRepositoryImpl implements LibraryRepository {
  final LibraryApiClient libraryApiClient;

  LibraryRepositoryImpl({required this.libraryApiClient});

  @override
  Future<Either<Failure, List<Video>>> getVideosHistory({required int page, required int amount}) async {
    try {
      final List<Video> videoList = await libraryApiClient.getVideosHistory(page: page, amount: amount);
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
}
