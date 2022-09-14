import 'dart:convert';

import 'package:app_client_beta/api_acess/post_replay/replay_questions.dart';
import 'package:app_client_beta/api_acess/data_questions/data_model.dart';
import 'package:app_client_beta/api_acess/data_questions/i_data_repository.dart';
import 'package:http/http.dart' as http;

class DataHttpRepository implements IDataRepository {
  @override
  Future<List<DataModel>> findAllData() async {
    String idFlow = objReplyQuestions.idFlow;
    final response = await http.get(
      Uri.parse(
        'http://192.168.0.104:8080/api/question/list/$idFlow',
      ),
    );
    final List<dynamic> responseMap = jsonDecode(response.body)['data'];

    return responseMap
        .map<DataModel>((resp) => DataModel.fromMap(resp))
        .toList();
  }
}
