import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:domain/domain.dart';

class EmailRepositoryImpl implements EmailRepository {
  @override
  Future<Either<Failure, Unit>> addEmail(Email article) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> deleteEmail(int id) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Email>>> getAllEmails(int day) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Email>>> getMostPopularEmails(int day) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, Unit>> updateEmail(Email article) {
    throw UnimplementedError();
  }


}