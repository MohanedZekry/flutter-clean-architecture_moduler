import 'package:data/src/data_source/remote/email_remote_data_source.dart';
import 'package:data/src/models/email_model.dart';

class EmailRemoteDataSourceImpl implements EmailRemoteDataSource {

  @override
  Future<List<EmailModel>> getAllEmails(int page) {
    throw UnimplementedError();
  }

  @override
  Future<List<EmailModel>> getMostPopularEmails(int page) {
    throw UnimplementedError();
  }
}