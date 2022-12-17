import 'package:domain/domain.dart';

class ArticleModel extends Article {
  const ArticleModel({
    required super.id,
    required super.url,
    required super.title,
    required super.source,
    required super.publishedDate,
    required super.summary,
    super.image
  });

  factory ArticleModel.fromJson(Map<String, dynamic> json) =>
      ArticleModel(
          id: json['id'],
          url: json['url'],
          title: json['title'],
          source: json['source'],
          publishedDate: json['publishedDate'],
          summary: json['summary'],
          image: json['image']
      );

  Map<String, dynamic> toJson() =>
      {
        'id': id,
        'url': url,
        'title': title,
        'source': source,
        'publishedDate' : publishedDate,
        'summary': summary
      };

}