import 'package:connecting_api/api_acess/http_controller.dart';
import 'package:connecting_api/api_acess/data_questions/data_http_repository.dart';
import 'package:connecting_api/api_acess/data_questions/i_data_repository.dart';
import 'package:get/get.dart';

class HttpBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<IDataRepository>(DataHttpRepository());
    Get.put(HttpController(Get.find()));
  }
}
