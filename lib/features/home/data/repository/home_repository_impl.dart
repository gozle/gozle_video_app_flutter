import 'package:dartz/dartz.dart';
import 'package:video_gozle/core/exception/exception.dart';
import 'package:video_gozle/core/failure/failure.dart';
import 'package:video_gozle/features/global/domain/models/video_category_model.dart';
import 'package:video_gozle/features/global/domain/models/video_model.dart';
import 'package:video_gozle/features/home/data/datasources/remote.dart';
import 'package:video_gozle/features/home/domain/models/banner.dart';

import '../../domain/models/drawer_menu_category.dart';
import '../../domain/repository/home_repository_interface.dart';

class HomeRepositoryImpl extends HomeRepository {
  HomeRepositoryImpl({
    required this.homeApiClient,
  });

  final HomeApiClient homeApiClient;

  @override
  Future<Either<Failure, List<VideoCategory>>> getVideoCategories() async {
    try {
      final items = await homeApiClient.getVideoCategories();
      return right(items);
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

  //TODO: if no need clear it
  // @override
  // Future<Either<Failure, List<DrawerMenuCategory>>> getDrawerCategories() async {
  //   try {
  //     final items = await homeApiClient.getDrawerCategories();
  //     return right(items);
  //   } on ServerException catch (_) {
  //     return left(ServerFailure());
  //   } on InternetException catch (_) {
  //     return left(SocketFailure());
  //   } on NotFoundException catch (_) {
  //     return left(NotFoundFailure());
  //   } on AuthenticationException catch (_) {
  //     return left(AuthenticationFailure());
  //   } catch (e) {
  //     return left(UnexpectedFailure());
  //   }
  // }

  @override
  Future<Either<Failure, List<Video>>> getPopular({
    required int amount,
    required int page,
    required int time,
  }) async {
    try {
      final videoList = await homeApiClient.getPopularVideos(
        amount: amount,
        page: page,
        time: time,
      );
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
  Future<Either<Failure, List<Video>>> getVideoByCategory({
    required int page,
    required int amount,
    required VideoCategory category,
  }) async {
    try {
      final videoList = await homeApiClient.getVideosByCategory(
        pk: category.pk ?? 0,
        amount: amount,
        page: page,
      );
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
  Future<Either<Failure, List<Video>>> getLatestVideo(
      {required int page, required int amount}) async {
    try {
      final videoList = await homeApiClient.getLatestVideos(
        amount: amount,
        page: page,
      );
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
  Future<Either<Failure, Banner>> getBanners({
    required String language,
  }) async {
    try {
      final bannerList = await homeApiClient.getBanners(
        language: language,
      );
      return right(bannerList);
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

  //TODO: if no need clear it
  // @override
  // Future<Either<Failure, List<Video>>> getVideoByDrawerMenuCategory({
  //   required int page,
  //   required int amount,
  //   required DrawerMenuCategory category,
  // }) async{
  //   try {
  //     final videoList = await homeApiClient.getVideosByCategory(
  //       pk: category.pk ?? 0,
  //       amount: amount,
  //       page: page,
  //     );
  //     return right(videoList);
  //   } on ServerException catch (_) {
  //     return left(ServerFailure());
  //   } on InternetException catch (_) {
  //     return left(SocketFailure());
  //   } on NotFoundException catch (_) {
  //     return left(NotFoundFailure());
  //   } on AuthenticationException catch (_) {
  //     return left(AuthenticationFailure());
  //   } catch (e) {
  //     return left(UnexpectedFailure());
  //   }
  // }
}
