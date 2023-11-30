import 'package:equatable/equatable.dart';

class VideoCategory extends Equatable {
  final int? pk;
  final String? name;
  final String? verbose;
  final String? iconAsset;
  const VideoCategory({
    this.pk,
    this.name,
    this.verbose,
    this.iconAsset,
  });

  VideoCategory.fromJson(Map<String, dynamic> json)
      : pk = json['pk'] as int?,
        name = json['name'] as String?,
        verbose = json['verbose'] as String?,
        iconAsset = json['iconAsset'] as String?;

  Map<String, dynamic> toJson() => {
        'pk': pk,
        'name': name,
        'verbose': verbose,
      };

  @override
  List<Object?> get props => [pk];
}
