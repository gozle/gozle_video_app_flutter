import 'package:equatable/equatable.dart';

class Banner extends Equatable {
  final int id;
  final String text;
  final String description;
  final String? link;
  final String? language;
  final String image;

  const Banner(
      {this.id = 0,
      this.text = '',
      this.description = '',
      this.link = '',
      this.image = '',
      this.language = 'tm'});

  Banner.fromJson(
    Map<String, dynamic> json,
  )   : id = json['id'] as int? ?? 0,
        text = '${json['text'] as String?}',
        description = '${json['description'] as String?}',
        link = (json['link'] as String?),
        language = json['language'] as String?,
        image = json['image'] as String? ?? "";

  Map<String, dynamic> toJson() => {
        'id': id,
        'text': text,
        'description': description,
        'link': link,
        'language': language,
        'image': image,
      };

  @override
  List<Object?> get props => [id, text];
}
