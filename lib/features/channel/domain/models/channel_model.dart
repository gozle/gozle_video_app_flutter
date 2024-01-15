class Channel {
  final String pk;
  final String? name;
  final String? channelAvatar;
  final int? view;
  final String? description;
  final String? channelBanner;
  final int? videoCount;
  final List<ChannelCategories>? categories;
  final bool? isSubscribed;

  Channel({
    this.pk = '404',
    this.name,
    this.channelAvatar,
    this.view,
    this.description,
    this.channelBanner,
    this.videoCount,
    this.isSubscribed,
    this.categories,
  });

  Channel.fromJson(
    Map<String, dynamic> json,
  )   : pk = '${json['pk'] as int?}',
        name = json['name'] as String?,
        isSubscribed = json['is_subscribed'] as bool?,
        channelAvatar = json['channel_avatar'] as String?,
        view = json['view'] as int?,
        description = json['description'] as String?,
        channelBanner = json['channel_banner'] as String?,
        categories = ((json['categories'] as List?)
                ?.map((dynamic e) => ChannelCategories.fromJson(e as Map<String, dynamic>))
                .toList(growable: false) ??
            []),
        videoCount = json['video_count'] as int?;

  Map<String, dynamic> toJson() => {
        'pk': pk,
        'name': name,
        'channel_avatar': channelAvatar,
        'view': view,
        'description': description,
        'channel_banner': channelBanner,
        'video_count': videoCount
      };
}

class ChannelCategories {
  final String pk;
  final String? name;
  final String? verbose;

  ChannelCategories({
    this.pk = '404',
    this.name,
    this.verbose,
  });

  ChannelCategories.fromJson(
    Map<String, dynamic> json,
  )   : pk = '${json['pk'] as int?}',
        name = json['name'] as String?,
        verbose = json['verbose'] as String?;

  Map<String, dynamic> toJson() => {
    'pk': pk,
    'name': name,
    'verbose': verbose,
  };
}
