import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:domain/src/repository/article_repository.dart';
import '../entities//article.dart';

class GetAllArticlesUseCase extends BaseUseCase<List<Article>, DefaultParams>{

  final ArticleRepository articleRepository;

  GetAllArticlesUseCase({required this.articleRepository});

  @override
  Future<Either<Failure, List<Article>>> call(DefaultParams param) async{
    return await articleRepository.getAllArticles();
  }

}