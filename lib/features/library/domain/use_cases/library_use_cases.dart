import 'package:dartz/dartz.dart';
import 'package:video_gozle/core/failure/failure.dart';
import 'package:video_gozle/features/global/domain/models/video_model.dart';
import 'package:video_gozle/features/library/domain/repository/history_repository.dart';

class LibraryUseCases {
  final LibraryRepository libraryRepository;

  LibraryUseCases({required this.libraryRepository});

  Future<Either<Failure, List<Video>>> getVideosHistory({required int page, required int amount}) {
    return libraryRepository.getVideosHistory(page: page, amount: amount);
  }

  Future<Either<Failure, List<Video>>> getVideosWatchLater({required int page, required int amount}) {
    return libraryRepository.getVideosHistory(page: page, amount: amount);
  }
}
