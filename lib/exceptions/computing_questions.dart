// ignore_for_file: use_key_in_widget_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../styles/constants.dart';

// ignore: must_be_immutable
class ComputingQuestions extends StatefulWidget {
  // ignore: prefer_const_constructors
  const ComputingQuestions({Key? key}) : super(key: key);
  @override
  State<ComputingQuestions> createState() => _ComputingQuestionsState();
}

class _ComputingQuestionsState extends State<ComputingQuestions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Lottie.asset(
              'assets/exceptions/computing-question.json',
              width: MediaQuery.of(context).size.width * 2,
              height: MediaQuery.of(context).size.height * 2,
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  "Agurade um momento, estamos salvando suas respostas...",
                  style: TextStyle(
                    color: red800,
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
                //
              ],
            ),
          ),
        ],
      ),
    );
  }
}
