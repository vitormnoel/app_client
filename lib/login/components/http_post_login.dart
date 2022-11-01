import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../../api_acess/post_replay/replay_questions.dart';
import '../login_page.dart';

Future<bool> loginRequest(String identifier, String password) async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  try {
    var url = Uri.parse('http://192.168.0.104:8080/api/security/login');
    var response = await http.post(
      url,
      body: {
        'identifier': identifier,
        'password': password,
      },
    );
    final Map<String, dynamic> data = json.decode(response.body);
    final Map<String, dynamic> dataToken = data["data"];
    objReplyQuestions.identifierFlow = dataToken["idFlow"];
    objReplyQuestions.identifierToken = dataToken['token'];

    // if (dataToken["token"].isNotEmpty) {
    if (json.decode(response.body)['data'].toString().isNotEmpty) {
      // ignore: avoid_print, prefer_interpolation_to_compose_strings
      print('token:::::::::::::::' + dataToken['token']);
      return true;
    } else {
      return false;
    }
  } on SocketException {
    // ignore: avoid_print

    Get.toNamed('/errorconnection');
    print('No Internet connection ');
    return false;
  } on HttpException {
    // ignore: avoid_print

    Get.toNamed('/errorconnection');
    print("Couldn't find the post ");
    return false;
  } on FormatException {
    // ignore: avoid_print

    Get.toNamed('/errorconnection');
    print("Bad response format ");
    return false;
  } on TimeoutException {
    Get.toNamed('/errorconnection');
    print('timeOut');
    return false;
  } on Error catch (e, stackStrace) {
    Get.toNamed('/login');
    print(':::::::::::::::::::::: error ');
    return false;
  }
}
