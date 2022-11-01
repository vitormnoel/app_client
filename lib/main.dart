// ignore_for_file: prefer_const_constructors, duplicate_ignore
import 'package:app_client_beta/exceptions/error_connection.dart';
import 'package:app_client_beta/final/final_page.dart';
import 'package:app_client_beta/home/home_page.dart';
import 'package:app_client_beta/api_acess/http_bindings.dart';
import 'package:app_client_beta/questions/avarage/avarage.dart';
import 'package:app_client_beta/questions/icon_first/icon_first.dart';
import 'package:app_client_beta/questions/icon_second/icon_second.dart';
import 'package:app_client_beta/questions/icon_third/icon_third.dart';
import 'package:app_client_beta/questions/option/option.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'exceptions/computing_questions.dart';
import 'exceptions/error.dart';
import 'exceptions/loading.dart';
import 'login/login_page.dart';
import 'questions/boolean/boolean_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeRight]);
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        // ignore: prefer_const_constructors
        GetPage(
          name: '/',
          // ignore: prefer_const_constructors
          page: () => LoginPage(),

          children: [
            // ignore: prefer_const_constructors
            GetPage(
              name: '/home',
              page: () => HomePage(),
              binding: HttpBindings(),
            ),
            GetPage(name: '/boolean', page: () => Boolean()),
            GetPage(name: '/option', page: () => Option()),
            GetPage(name: '/iconfirst', page: () => IconFirst()),
            GetPage(name: '/iconsecond', page: () => IconSecond()),
            GetPage(name: '/iconthird', page: () => IconThird()),
            GetPage(name: '/avarage', page: () => Avarage()),
            GetPage(name: '/final', page: () => FinalPage()),
            GetPage(name: '/error', page: () => ErroPage()),
            GetPage(name: '/computing', page: () => ComputingQuestions()),
            GetPage(name: '/loading', page: () => LoadingPage()),
            GetPage(name: '/errorconnection', page: () => ErrorConnection()),
          ],
        ),
      ],
    );
  }
}
