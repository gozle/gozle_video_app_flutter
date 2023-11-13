import 'package:dartz/dartz.dart';
import 'package:video_gozle/core/failure/failure.dart';
import 'package:video_gozle/features/global/domain/models/video_model.dart';

abstract class LibraryRepository {
  Future<Either<Failure, List<Video>>> getVideosHistory({required int page, required int amount});
}
