import 'package:dartz/dartz.dart';
import 'package:video_gozle/core/failure/failure.dart';
import 'package:video_gozle/features/global/domain/models/video_category_model.dart';
import 'package:video_gozle/features/global/domain/models/video_model.dart';
import 'package:video_gozle/features/home/domain/models/banner.dart';
import 'package:video_gozle/features/home/domain/models/drawer_menu_category.dart';

import '../../../channel/domain/models/channel_model.dart';

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


  Future<Either<Failure, List<Video>>> getLatestVideo({
    required int page,
    required int amount,
  });

  Future<Either<Failure, List<Channel>>> getPopularChannels({
    required int page,
    required int amount,
  });

  Future<Either<Failure, List<VideoCategory>>> getVideoCategories();

  Future<Either<Failure, Banner>> getBanners({required String language});
}
