// ignore_for_file: avoid_print, duplicate_ignore
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ReplyQuestions {
  //----------------------------------------------------------------
  bool replyOne = false;
  String replyTwo = '';
  String replyThree = '';
  String replyFour = '';
  String replyFive = '';
  int replySix = 0;
  //----------------------------------------------------------------
  String idQuestionOne = '';
  String idQuestionTwo = '';
  String idQuestionThree = '';
  String idQuestionFour = '';
  String idQuestionFive = '';
  String idQuestionSix = '';
  //----------------------------------------------------------------
  String idFlow = '';
  String idSession = '';
  String token = '';

  set replyQuestionOne(replyOne) {
    this.replyOne = replyOne;
  }

  bool get replyQuestionOne {
    return replyOne;
  }

  set replyQuestionTwo(replyTwo) {
    this.replyTwo = replyTwo;
  }

  String get replyQuestionTwo {
    return replyTwo;
  }

  set replyQuestionThree(replyThree) {
    this.replyThree = replyThree;
  }

  String get replyQuestionThree {
    return replyThree;
  }

  set replyQuestionFour(replyFour) {
    this.replyFour = replyFour;
  }

  String get replyQuestionFour {
    return replyFour;
  }

  set replyQuestionFive(replyFive) {
    this.replyFive = replyFive;
  }

  String get replyQuestionFive {
    return replyFive;
  }

  set replyQuestionSix(replySix) {
    this.replySix = replySix;
  }

  int get replyQuestionSix {
    return replySix;
  }
// ---------------------------

  set idOne(idQuestionOne) {
    this.idQuestionOne = idQuestionOne;
  }

  String get idOne {
    return idQuestionOne;
  }

  set idTwo(idQuestionTwo) {
    this.idQuestionTwo = idQuestionTwo;
  }

  String get idTwo {
    return idQuestionTwo;
  }

  set idThree(idQuestionThree) {
    this.idQuestionThree = idQuestionThree;
  }

  String get idThree {
    return idQuestionThree;
  }

  set idFour(idQuestionFour) {
    this.idQuestionFour = idQuestionFour;
  }

  String get idFour {
    return idQuestionFour;
  }

  set idFive(idQuestionFive) {
    this.idQuestionFive = idQuestionFive;
  }

  String get idFive {
    return idQuestionFive;
  }

  set idSix(idQuestionSix) {
    this.idQuestionSix = idQuestionSix;
  }

  String get idSix {
    return idQuestionSix;
  }

// ---------------------------

  set identifierFlow(idFlow) {
    this.idFlow = idFlow;
  }

  String get identifierFlow {
    return idFlow;
  }

  set identifierSession(idSession) {
    this.idSession = idSession;
  }

  String get identifierSession {
    return idSession;
  }

  set identifierToken(token) {
    this.token = token;
  }

  String get identifierToken {
    return token;
  }

// ===========================

  postReplyOne() async {
    await http.post(Uri.parse('http://192.168.0.104:8080/api/answer/reply'),
        headers: {
          'Accept': 'application/json',
          'Authorization': 'Bearer $token'
        },
        body: {
          'answer[reply]': '$replyQuestionOne',
          'answer[question]': '$idOne',
          'answer[session]': '$identifierSession',
        }).then((response) {
      print('Response body : ${response.body}');
    });
  }

  postReplyTwo() async {
    await http.post(Uri.parse('http://192.168.0.104:8080/api/answer/reply'),
        headers: {
          'Accept': 'application/json',
          'Authorization': 'Bearer $token'
        },
        body: {
          'answer[reply]': '$replyQuestionTwo',
          'answer[question]': '$idTwo',
          'answer[session]': '$identifierSession',
        }).then((response) {
      print('Response body : ${response.body}');
    });
  }

  postReplyThree() async {
    await http.post(Uri.parse('http://192.168.0.104:8080/api/answer/reply'),
        headers: {
          'Accept': 'application/json',
          'Authorization': 'Bearer $token'
        },
        body: {
          'answer[reply]': '$replyQuestionThree',
          'answer[question]': '$idThree',
          'answer[session]': '$identifierSession',
        }).then((response) {
      print('Response body : ${response.body}');
    });
  }

  postReplyFour() async {
    await http.post(Uri.parse('http://192.168.0.104:8080/api/answer/reply'),
        headers: {
          'Accept': 'application/json',
          'Authorization': 'Bearer $token'
        },
        body: {
          'answer[reply]': '$replyQuestionFour',
          'answer[question]': '$idFour',
          'answer[session]': '$identifierSession',
        }).then((response) {
      print('Response body : ${response.body}');
    });
  }

  postReplyFive() async {
    await http.post(Uri.parse('http://192.168.0.104:8080/api/answer/reply'),
        headers: {
          'Accept': 'application/json',
          'Authorization': 'Bearer $token'
        },
        body: {
          'answer[reply]': '$replyQuestionFive',
          'answer[question]': '$idFive',
          'answer[session]': '$identifierSession',
        }).then((response) {
      print('Response body : ${response.body}');
    });
  }

  postReplySix() async {
    await http.post(Uri.parse('http://192.168.0.104:8080/api/answer/reply'),
        headers: {
          'Accept': 'application/json',
          'Authorization': 'Bearer $token'
        },
        body: {
          'answer[reply]': '$replyQuestionSix',
          'answer[question]': '$idSix',
          'answer[session]': '$identifierSession',
        }).then((response) {
      print('Response body : ${response.body}');
    });
  }

  Future finishSession() async {
    var url = Uri.parse(
        'http://192.168.0.104:8080/api/session/finish/$identifierSession');
    // ignore: unused_local_variable
    var response = await http.put(url, headers: {
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    }).then((response) {
      debugPrint('session getter in::: $identifierSession');
      debugPrint('Response body : ${response.body}');
    });
    Get.toNamed('/final');
  }

  awaitIdSession() async {
    while (identifierSession == '') {
      Get.toNamed('/loading');

      return false;
    }

    return true;
  }

  Future postAll() async {
    final a = await postReplyOne();
    final b = await postReplyTwo();
    final c = await postReplyThree();
    final d = await postReplyFour();
    final e = await postReplyFive();
    final f = await postReplySix();
    final finishing = await finishSession();
    //final g = await ;
    a;
    b;
    c;
    d;
    e;
    f;
    debugPrint('session getter out::: $identifierSession');
    finishing();

    return true;
  }
}

ReplyQuestions objReplyQuestions = ReplyQuestions();

//>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
Future<bool> createSessionApi(String token, String idFlow) async {
  objReplyQuestions.identifierSession = '';
  var url = Uri.parse('http://192.168.0.104:8080/api/session/create');
  var response = await http.post(url, headers: {
    'Accept': 'application/json',
    'Authorization': 'Bearer $token'
  }, body: {
    'session[flow]': idFlow,
  });

  if (response.statusCode == 200) {
    final Map<String, dynamic> data = json.decode(response.body);
    debugPrint('session::::: ${data.toString()}');

    try {
      final Map<String, dynamic> dataToken = data["data"];

      objReplyQuestions.identifierSession = dataToken["id"];

      if (dataToken["id"] != null) {
        Get.toNamed('/boolean');
        return true;
      }
    } catch (error) {
      debugPrint(':::: $error');
      return false;
    }
    return false;
    // ignore: duplicate_ignore
  } else {
    // ignore: avoid_print
    print("erro de conexão.\n");
    return false;
  }
}
