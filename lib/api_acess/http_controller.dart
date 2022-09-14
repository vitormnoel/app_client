import 'package:connecting_api/api_acess/data_questions/i_data_repository.dart';
import 'package:get/get.dart';

class HttpController extends GetxController with StateMixin {
  final IDataRepository _httpRepository;

  HttpController(this._httpRepository);

  @override
  void onInit() {
    super.onInit();
    findData();
  }

  Future<void> findData() async {
    change([], status: RxStatus.loading());

    try {
      final dados = await _httpRepository.findAllData();
      change(dados, status: RxStatus.success());
    } catch (e) {
      change([], status: RxStatus.error('Erro ao buscar dados $e'));
    }
  }
}
