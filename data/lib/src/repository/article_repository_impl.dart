import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  @override
  Future<Either<Failure, Unit>> addArticle(Article article) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> deleteArticle(int id) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Article>>> getAllArticles() {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> updateArticle(Article article) {
    throw UnimplementedError();
  }

}