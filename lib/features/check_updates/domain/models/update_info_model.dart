class UpdateInfo {
  final int? androidVersion;
  final String? androidAppLink;
  final int? iosVersion;
  final String? iosAppLink;

  UpdateInfo({
    this.androidVersion,
    this.androidAppLink,
    this.iosVersion,
    this.iosAppLink,
  });

  UpdateInfo.fromJson(Map<String, dynamic> json)
      : androidVersion = json['android_version'] as int?,
        androidAppLink = json['android_app_link'] as String?,
        iosVersion = json['ios_version'] as int?,
        iosAppLink = json['ios_app_link'] as String?;

  Map<String, dynamic> toJson() => {
        'android_version': androidVersion,
        'android_app_link': androidAppLink,
        'ios_version': iosVersion,
        'ios_app_link': iosAppLink
      };
}
