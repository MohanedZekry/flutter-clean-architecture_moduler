import 'package:data/src/models/email_model.dart';

abstract class EmailRemoteDataSource {
  Future<List<EmailModel>> getAllEmails(int page);
  Future<List<EmailModel>> getMostPopularEmails(int page);
}