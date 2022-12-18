import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import '../../domain.dart';

abstract class EmailRepository {
  Future<Either<Failure, List<Email>>> getAllEmails(int day);
  Future<Either<Failure, List<Email>>> getMostPopularEmails(int day);
  Future<Either<Failure, Unit>> deleteEmail(int id);
  Future<Either<Failure, Unit>> updateEmail(Email article);
  Future<Either<Failure, Unit>> addEmail(Email article);
}