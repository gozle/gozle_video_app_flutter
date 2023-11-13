import 'package:dartz/dartz.dart';
import 'package:video_gozle/core/failure/failure.dart';
import 'package:video_gozle/features/global/domain/models/video_category_model.dart';
import 'package:video_gozle/features/global/domain/models/video_model.dart';
import 'package:video_gozle/features/home/domain/repository/home_repository_interface.dart';

class HomeUseCases {
  final HomeRepository homeRepository;

  HomeUseCases({required this.homeRepository});

  Future<Either<Failure, List<Video>>> getPopular({
    required int page,
    required int amount,
    required int time,
  }) {
    return homeRepository.getPopular(
      page: page,
      amount: amount,
      time: time,
    );
  }

  Future<Either<Failure, List<Video>>> getVideoByCategory({
    required int page,
    required int amount,
    required VideoCategory category,
  }) {
    return homeRepository.getVideoByCategory(
      amount: amount,
      category: category,
      page: page,
    );
  }

  Future<Either<Failure, List<VideoCategory>>> getVideoCategories() {
    return homeRepository.getVideoCategories();
  }
}
