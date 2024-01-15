import 'package:dartz/dartz.dart';
import 'package:video_gozle/core/failure/failure.dart';
import 'package:video_gozle/features/global/domain/models/video_category_model.dart';
import 'package:video_gozle/features/global/domain/models/video_model.dart';
import 'package:video_gozle/features/home/domain/models/banner.dart';
import 'package:video_gozle/features/home/domain/models/drawer_menu_category.dart';

abstract class HomeRepository {
  Future<Either<Failure, List<Video>>> getPopular({
    required int page,
    required int amount,
    required int time,
  });

  Future<Either<Failure, List<Video>>> getVideoByCategory({
    required int page,
    required int amount,
    required VideoCategory category,
  });

  //TODO: if no need clear it
  // Future<Either<Failure, List<Video>>> getVideoByDrawerMenuCategory({
  //   required int page,
  //   required int amount,
  //   required DrawerMenuCategory category,
  // });

  Future<Either<Failure, List<Video>>> getLatestVideo({
    required int page,
    required int amount,
  });

  Future<Either<Failure, List<VideoCategory>>> getVideoCategories();

  //TODO: if no need clear it
  // Future<Either<Failure, List<DrawerMenuCategory>>> getDrawerCategories();

  Future<Either<Failure, Banner>> getBanners({required String language});
}
