import 'package:equatable/equatable.dart';

class Email extends Equatable {

  final int id;
  final String url;
  final String title;
  final String source;
  final String publishedDate;
  final String summary;
  final String? image;
  final String? type;
  final String byline;

  const Email({
    required this.id,
    required this.url,
    required this.title,
    required this.source,
    required this.publishedDate,
    required this.summary,
    this.image,
    this.type,
    required this.byline
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
        type,
        byline,
      ];
}