import 'dart:convert';
import 'package:app_client_beta/api_acess/post_replay/replay_questions.dart';
import 'package:http/http.dart' as http;

Future<bool> loginRequest(String identifier, String password) async {
  //SharedPreferences sharedPreference = await SharedPreferences.getInstance();
  var url = Uri.parse('http://192.168.0.104:8080/api/security/login');
  var reposta = await http.post(
    url,
    body: {
      'identifier': identifier,
      'password': password,
    },
  );

  if (reposta.statusCode == 200) {
    final Map<String, dynamic> data = json.decode(reposta.body);

    try {
      final Map<String, dynamic> dataToken = data["data"];

      objReplyQuestions.identifierFlow = dataToken["idFlow"];
      objReplyQuestions.identifierToken = dataToken['token'];

      if (dataToken["token"].isNotEmpty) {
        return true;
      }
    } catch (error) {
      // ignore: avoid_print
      print(':::: $error');
      return false;
    }
    return false;
  } else {
    // ignore: avoid_print
    print("erro de conexão.\n");
    return false;
  }
}
