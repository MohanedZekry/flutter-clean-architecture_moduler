import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:domain/src/repository/article_repository.dart';

class DeleteArticleUseCase extends BaseUseCase<Unit, int>{

  final ArticleRepository articleRepository;

  DeleteArticleUseCase({required this.articleRepository});

  @override
  Future<Either<Failure, Unit>> call(int param) async{
    return await articleRepository.deleteArticle(param);
  }

}