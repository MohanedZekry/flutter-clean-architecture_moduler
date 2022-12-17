import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:domain/src/entities//article.dart';

abstract class ArticleRepository {
  Future<Either<Failure, List<Article>>> getAllArticles();
  Future<Either<Failure, Unit>> deleteArticle(int id);
  Future<Either<Failure, Unit>> updateArticle(Article article);
  Future<Either<Failure, Unit>> addArticle(Article article);
}