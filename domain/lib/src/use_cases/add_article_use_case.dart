import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:domain/src/repository/article_repository.dart';
import '../entities//article.dart';

class AddArticleUseCase extends BaseUseCase<Unit, Article>{

  final ArticleRepository articleRepository;

  AddArticleUseCase({required this.articleRepository});

  @override
  Future<Either<Failure, Unit>> call(Article param) async{
    return await articleRepository.addArticle(param);
  }

}