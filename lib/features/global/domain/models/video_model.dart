import 'package:equatable/equatable.dart';

import 'expansion.dart';
import 'video_category_model.dart';

class Video extends Equatable {
  final String pk;
  final String title;
  final String description;
  final int view;
  final int duration;
  final String? m3u8;
  final Expansion? expansion;
  final String thumbnailUrl;
  final List<VideoCategory> category;
  final bool? live;
  final bool? isSubscribed;
  final bool? isLiked;
  final int? likesCount;
  final String? date;
  final String? channelName;
  final String? channelUrl;
  final String channelId;

  const Video({
    this.pk = '404',
    this.title = '',
    this.description = '',
    this.view = 0,
    this.duration = 0,
    this.m3u8,
    this.expansion,
    this.thumbnailUrl = '',
    this.category = const [],
    this.live,
    this.date,
    this.channelName,
    this.channelUrl,
    this.channelId = '404',
    this.isSubscribed,
    this.isLiked,
    this.likesCount,
  });

  Video.fromJson(
    Map<String, dynamic> json,
  )   : pk = '${json['pk'] as int?}',
        title = '${json['title'] as String?}',
        description = '${json['description'] as String?}',
        view = (json['view'] as int?) ?? 0,
        likesCount = json['likes_count'] as int?,
        isSubscribed = json['is_subscribed'] as bool?,
        isLiked = json['is_liked'] as bool?,
        duration = (json['duration'] as int?) ?? 0,
        m3u8 = json['m3u8'] as String?,
        expansion = Expansion.fromJson(json['expansion']),
        thumbnailUrl = '${json['thumbnail_url'] as String?}',
        category = ((json['category'] as List?)
                ?.map((dynamic e) => VideoCategory.fromJson(e as Map<String, dynamic>))
                .toList() ??
            []),
        live = json['live'] as bool?,
        date = json['date'] as String?,
        channelName = json['channel_name'] as String?,
        channelUrl = json['channel_url'] as String?,
        channelId = '${json['channel_id'] as int?}';

  Map<String, dynamic> toJson() => {
        'pk': pk,
        'title': title,
        'description': description,
        'view': view,
        'duration': duration,
        'm3u8': m3u8,
        'expansion': expansion,
        'thumbnail_url': thumbnailUrl,
        'category': category.map((e) => e.toJson()).toList(),
        'live': live,
        'date': date,
        'channel_name': channelName,
        'channel_url': channelUrl,
        'channel_id': channelId
      };

  @override
  List<Object?> get props => [pk, title];
}
