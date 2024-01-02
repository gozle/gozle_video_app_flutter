import 'package:dartz/dartz.dart';
import 'package:video_gozle/core/failure/failure.dart';
import 'package:video_gozle/features/global/domain/models/video_category_model.dart';
import 'package:video_gozle/features/global/domain/models/video_model.dart';
import 'package:video_gozle/features/video/domain/model/comment_model.dart';
import 'package:video_gozle/features/video/domain/model/video_ads_model.dart';
import 'package:video_gozle/features/video/domain/repository/video_repository.dart';

class VideoUseCases {
  final VideoRepository videoRepository;

  VideoUseCases({required this.videoRepository});

  Future<Either<Failure, Video>> getVideoDetails({
    required String videoId,
  }) =>
      videoRepository.getVideoDetails(videoId: videoId);

  Future<Either<Failure, VideoAdsModel>> getVideoAd({required String language}) => videoRepository.getVideoAd(language: language);

  Future<Either<Failure, VideoAdsModel>> getTestVideoAd() async {
    await Future.delayed(const Duration(seconds: 1));
    return right(
      const VideoAdsModel(
          id: 1,
          uuid: 'uuid',
          video: 'https://v.gozle.com.tm/2/media/video/8AyG5Rk-KjU/video.m3u8',
          image: 'https://v.gozle.com.tm/media/thumbnails/28/0-SFAn8oYtg.png',
          status: 'status',
          text: 'title',
          link: 'https://flutter.dev',
          description: '''
            What Is Lorem Ipsum and Why Is It Used? - Solopress UK
            Lorem Ipsum, sometimes referred to as 'lipsum', is the
            placeholder text used in design when creating content.
            It helps designers plan out where the content will sit, without needing to
            wait for the content to be written and approved. It originally comes from
            Lorem Ipsum, sometimes referred to as 'lipsum', is the
            placeholder text used in design when creating content.
            It helps designers plan out where the content will sit, without needing to
            wait for the content to be written and approved. It originally comes from
            Lorem Ipsum, sometimes referred to as 'lipsum', is the
            placeholder text used in design when creating content.
            It helps designers plan out where the content will sit, without needing to
            wait for the content to be written and approved. It originally comes from
            a Latin text, but to today's reader, it's seen as gibberish'''),
    );
  }

  Future<Either<Failure, List<Video>>> getSuggestedVideos({
    required String channelId,
    required int amount,
    required int page,
  }) =>
      videoRepository.getSuggestedVideos(
        channelId: channelId,
        amount: amount,
        page: page,
      );

  Future<Either<Failure, List<Video>>> getVideoByCategory({
    required int page,
    required int amount,
    required VideoCategory category,
  }) =>
      videoRepository.getVideoByCategory(
        category: category,
        amount: amount,
        page: page,
      );

  Future<Either<Failure, List<Comment>>> getCommentsByVideo({
    required int page,
    required int amount,
    required String videoId,
  }) =>
      videoRepository.getCommentsByVideo(
        videoId: videoId,
        amount: amount,
        page: page,
      );

  Future<Either<Failure, void>> postComment({
    required String message,
    required String videoId,
  }) =>
      videoRepository.postComment(
        message: message,
        videoId: videoId,
      );

  Future<Either<Failure, void>> likeVideo({required String videoId}) =>
      videoRepository.likeVideo(videoId: videoId);

  Future<Either<Failure, void>> removeLike({required String videoId}) =>
      videoRepository.removeLike(videoId: videoId);

  DateTime? getAdsLastView() => videoRepository.getAdsLastView();

  Future<Either<Failure, void>> updateAdsLastView() => videoRepository.updateAdsLastView();
}
