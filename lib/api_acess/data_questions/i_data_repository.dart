import 'package:connecting_api/api_acess/data_questions/data_model.dart';

abstract class IDataRepository {
  Future<List<DataModel>> findAllData();
}
