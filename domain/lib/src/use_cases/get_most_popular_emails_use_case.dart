import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../domain.dart';

@injectable
class GetMostPopularEmailsUseCase extends BaseUseCase<List<Email>, int>{

  final EmailRepository emailRepository;


  GetMostPopularEmailsUseCase({required this.emailRepository});

  @override
  Future<Either<Failure, List<Email>>> call(int param) async{
    return await emailRepository.getMostPopularEmails(param);
  }

}