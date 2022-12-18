import 'package:domain/domain.dart';

class EmailModel extends Email {

  const EmailModel({
    required super.id,
    required super.url,
    required super.title,
    required super.source,
    required super.publishedDate,
    required super.summary,
    super.image,
    required super.byline,
    super.type
  });

  factory EmailModel.fromJson(Map<String, dynamic> json) =>
      EmailModel(
          id: json['id'],
          url: json['url'],
          title: json['title'],
          source: json['source'],
          publishedDate: json['publishedDate'],
          summary: json['summary'],
          image: json['image'],
          byline: json['byline'],
          type: json['type']
      );

  Map<String, dynamic> toJson() =>
      {
        'id': id,
        'url': url,
        'title': title,
        'source': source,
        'publishedDate' : publishedDate,
        'summary': summary,
        'byline' : byline,
        'type' : type
      };

}