import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:domain/src/repository/email_repository.dart';
import 'package:injectable/injectable.dart';
import '../entities//email.dart';

@injectable
class GetAllEmailsUseCase extends BaseUseCase<List<Email>, int>{

  final EmailRepository articleRepository;

  GetAllEmailsUseCase({required this.articleRepository});

  @override
  Future<Either<Failure, List<Email>>> call(int param) async{
    return await articleRepository.getAllEmails(param);
  }

}