import 'package:equatable/equatable.dart';

class Article extends Equatable {

  final int id;
  final String url;
  final String title;
  final String source;
  final String publishedDate;
  final String summary;
  final String? image;

  const Article({
    required this.id,
    required this.url,
    required this.title,
    required this.source,
    required this.publishedDate,
    required this.summary,
    required this.image
  });

  @override
  List<Object?> get props => [
        id,
        url,
        title,
        source,
        publishedDate,
        summary,
        image,
      ];
}