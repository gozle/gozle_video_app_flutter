class Channel {
  final String pk;
  final String? name;
  final String? channelAvatar;
  final int? view;
  final String? description;
  final String? channelBanner;
  final int? videoCount;

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
