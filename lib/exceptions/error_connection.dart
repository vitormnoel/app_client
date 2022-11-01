// ignore_for_file: must_be_immutable, use_key_in_widget_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../styles/constants.dart';
import 'package:get/get.dart';

class ErrorConnection extends StatefulWidget {
  var timer = Timer(const Duration(seconds: 15), () => Get.toNamed('/login'));

  @override
  State<ErrorConnection> createState() => _ErrorConnectionState();
}

class _ErrorConnectionState extends State<ErrorConnection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * .5,
              height: MediaQuery.of(context).size.height * 1,
              child: Lottie.asset(
                'assets/exceptions/erro.json',
                width: MediaQuery.of(context).size.width * .5,
                height: MediaQuery.of(context).size.height * 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
