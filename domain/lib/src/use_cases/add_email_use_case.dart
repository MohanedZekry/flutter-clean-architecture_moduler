import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:domain/src/repository/email_repository.dart';
import 'package:injectable/injectable.dart';
import '../entities//email.dart';

@injectable
class AddEmailUseCase extends BaseUseCase<Unit, Email>{

  final EmailRepository articleRepository;

  AddEmailUseCase({required this.articleRepository});

  @override
  Future<Either<Failure, Unit>> call(Email param) async{
    return await articleRepository.addEmail(param);
  }

}