// ignore_for_file: must_be_immutable, use_key_in_widget_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../styles/constants.dart';
import 'package:get/get.dart';

class ErroPage extends StatefulWidget {
  var timer = Timer(const Duration(seconds: 5), () => Get.toNamed('/login'));

  @override
  State<ErroPage> createState() => _ErroPageState();
}

class _ErroPageState extends State<ErroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * .4,
          height: MediaQuery.of(context).size.height * 1,
          child: Lottie.asset(
            'assets/exceptions/erro.json',
            width: MediaQuery.of(context).size.width * .4,
            height: MediaQuery.of(context).size.height * 1,
          ),
        ),
      ),
    );
  }
}
