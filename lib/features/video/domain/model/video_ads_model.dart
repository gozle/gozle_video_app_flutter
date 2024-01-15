import 'package:equatable/equatable.dart';

class VideoAdsModel extends Equatable {
  final int id;
  final String uuid;
  final String text;
  final String description;
  final String? link;
  final String video;
  final String image;
  final int skip_duration;
  final String language;
  final String status;

  const VideoAdsModel({
    required this.id,
    required this.uuid,
    this.text = '',
    this.description = '',
    this.link,
    required this.video,
    required this.image,
    this.skip_duration = 5,
    this.language = 'en',
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'uuid': uuid,
      'text': text,
      'description': description,
      'link': link,
      'video': video,
      'image': image,
      'skip_duration': skip_duration,
      'language': language,
      'status': status,
    };
  }

  factory VideoAdsModel.fromMap(Map<String, dynamic> map) {
    return VideoAdsModel(
      id: map['id'] ?? 0,
      uuid: map['uuid'] ?? '',
      text: map['text'] ?? '',
      description: map['description'] ?? '',
      link: map['link']?.toString(),
      video: map['video'] ?? '',
      image: map['image'] ?? '',
      skip_duration: map['skip_duration'] ?? 5,
      language: map['language'] ?? '',
      status: map['status'] ?? '',
    );
  }

  @override
  List<Object> get props {
    return [
      id,
      uuid,
      text,
      description,
      link ?? '',
      video,
      image,
      skip_duration,
      language,
      status,
    ];
  }

  VideoAdsModel copyWith({
    int? id,
    String? uuid,
    String? text,
    String? description,
    String? link,
    String? video,
    String? image,
    int? skip_duration,
    String? language,
    String? status,
  }) {
    return VideoAdsModel(
      id: id ?? this.id,
      uuid: uuid ?? this.uuid,
      text: text ?? this.text,
      description: description ?? this.description,
      link: link ?? this.link,
      video: video ?? this.video,
      image: image ?? this.image,
      skip_duration: skip_duration ?? this.skip_duration,
      language: language ?? this.language,
      status: status ?? this.status,
    );
  }
}
