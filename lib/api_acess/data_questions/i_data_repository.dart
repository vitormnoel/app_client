import 'package:app_client_beta/api_acess/data_questions/data_model.dart';

abstract class IDataRepository {
  Future<List<DataModel>> findAllData();
}
