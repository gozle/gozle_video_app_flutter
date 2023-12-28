import 'package:equatable/equatable.dart';

class Banner extends Equatable {
  final int id;
  final String text;
  final String description;
  final String? link;
  final String? language;
  final String image;
  final int cycleDuration;

  const Banner({
    this.id = 0,
    this.text = '',
    this.description = '',
    this.link = '',
    this.image = '',
    this.language = 'tm',
    this.cycleDuration = 0,
  });

  Banner.fromJson(
    Map<String, dynamic> json,
  )   : id = json['id'] as int? ?? 0,
        text = '${json['text'] as String?}',
        description = '${json['description'] as String?}',
        link = (json['link'] as String?),
        language = json['language'] as String?,
        image = json['image'] as String? ?? "",
        cycleDuration = json['cycle_duration'] as int? ?? 0;

  Map<String, dynamic> toJson() => {
        'id': id,
        'text': text,
        'description': description,
        'link': link,
        'language': language,
        'image': image,
        "cycle_duration": cycleDuration,
      };

  @override
  List<Object?> get props => [id, text];
}
