import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:domain/src/repository/email_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class DeleteEmailUseCase extends BaseUseCase<Unit, int>{

  final EmailRepository articleRepository;

  DeleteEmailUseCase({required this.articleRepository});

  @override
  Future<Either<Failure, Unit>> call(int param) async{
    return await articleRepository.deleteEmail(param);
  }

}