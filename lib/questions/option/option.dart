// ignore_for_file: prefer_typing_uninitialized_variables, use_key_in_widget_constructors, must_be_immutable

import 'package:app_client_beta/api_acess/http_controller.dart';
import 'package:app_client_beta/api_acess/data_questions/data_model.dart';
import 'package:app_client_beta/styles/questions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../api_acess/post_replay/replay_questions.dart';
import '../../styles/constants.dart';

class Option extends GetView<HttpController> {
  late int color = 0; //enable and disable button
  var pressed;

// ignore: non_constant_identifier_names
  ChangeColorButton(int number) {
    switch (number) {
      case 1:
        color = 1;
        pressed = () {};
        return 1;
        // ignore: dead_code
        break;
      case 2:
        color = 2;
        pressed = () {};
        return 2;
        // ignore: dead_code
        break;

      case 3:
        color = 3;
        pressed = () {};
        return 3;
        // ignore: dead_code
        break;
      default:
        return color = 0;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: prefer_const_constructors
      body: controller.obx(
        (state) {
          return StreamBuilder<Object>(
            stream: null,
            builder: (_, index) {
              //position question in vector
              final DataModel item = state[1];
              return Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/background.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 1,
                    width: MediaQuery.of(context).size.width * .8,
                    child: StatefulBuilder(
                      builder: ((context, setState) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .8,
                              height: MediaQuery.of(context).size.height * .7,
                              child: Card(
                                color: white,
                                margin: const EdgeInsets.only(bottom: 16),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 64, vertical: 80),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 40),
                                            child: Text(
                                              "Pergunta 2",
                                              style: numberQuestion,
                                            ),
                                          ),
                                          Text(
                                            item.enunciation,
                                            style: question,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .2,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .1,
                                            child: ElevatedButton(
                                              // ignore: prefer_const_constructors, sort_child_properties_last
                                              child: Text(item.options![0],
                                                  style: option),
                                              onPressed: () {
                                                setState(() {
                                                  ChangeColorButton(1);
                                                });
                                              },
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor: color == 0
                                                      ? gray100
                                                      : color == 1
                                                          ? yellow500
                                                          : gray100,
                                                  // background
                                                  foregroundColor: color == 1
                                                      ? white
                                                      : black700 // foreground
                                                  ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .2,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .1,
                                            child: ElevatedButton(
                                              // ignore: prefer_const_constructors, sort_child_properties_last
                                              child: Text(item.options![1],
                                                  style: option),
                                              onPressed: () {
                                                setState(() {
                                                  ChangeColorButton(2);
                                                });
                                              },
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor: color == 0
                                                      ? gray100
                                                      : color == 2
                                                          ? yellow500
                                                          : gray100,
                                                  // background
                                                  foregroundColor: color == 2
                                                      ? white
                                                      : black700 // foreground
                                                  ),
                                            ),
                                          ), //answer
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .2,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .1,
                                            child: ElevatedButton(
                                              // ignore: prefer_const_constructors, sort_child_properties_last
                                              child: Text(item.options![2],
                                                  style: option),
                                              onPressed: () {
                                                setState(() {
                                                  ChangeColorButton(3);
                                                });
                                              },
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: color == 0
                                                    ? gray100
                                                    : color == 3
                                                        ? yellow500
                                                        : gray100, // background
                                                foregroundColor: color == 3
                                                    ? white
                                                    : black700, // foreground
                                              ),
                                            ),
                                          ), //answer
                                        ],
                                      ), // ButtonBoolean(),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .11,
                              height: MediaQuery.of(context).size.height * .08,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: color == 0
                                      ? gray100
                                      : color > 0 && color < 4
                                          ? yellow500
                                          : red800,
                                  // Background Color
                                ),
                                onPressed: color == 0
                                    ? null
                                    : color > 0 && color < 4
                                        ? () {
                                            color == 1
                                                ? objReplyQuestions
                                                        .replyQuestionTwo =
                                                    item.options![0]
                                                : color == 2
                                                    ? objReplyQuestions
                                                            .replyQuestionTwo =
                                                        item.options![1]
                                                    : color == 3
                                                        ? objReplyQuestions
                                                                .replyQuestionTwo =
                                                            item.options![2]
                                                        : null;

                                            objReplyQuestions.idTwo = item.id;
                                            debugPrint(
                                                'id question two: ${objReplyQuestions.idTwo} | question two value: ${objReplyQuestions.replyQuestionTwo}');
                                            Get.toNamed('/iconfirst');
                                          }
                                        : null,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    const Text(
                                      'Próximo',
                                      style: next,
                                    ),
                                    // ignore: prefer_const_constructors
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: const Icon(
                                        Icons.arrow_forward_rounded,
                                        size: 32,
                                        color: white,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        );
                      }),
                    ),
                  ),
                ),
              );
            },
          );
        },
        onError: (error) {
          return const Center(
            child: Text('error'),
          );
        },
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset("assets/logo/logoback.png"),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }
}
