// ignore_for_file: prefer_typing_uninitialized_variables, use_key_in_widget_constructors, must_be_immutable

import 'package:app_client_beta/api_acess/http_controller.dart';
import 'package:app_client_beta/api_acess/data_questions/data_model.dart';
import 'package:app_client_beta/styles/questions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../api_acess/post_replay/replay_questions.dart';
import '../../styles/constants.dart';

class Boolean extends GetView<HttpController> {
  late int color = 0;

// ignore: non_constant_identifier_names
  ChangeColorButton(int number) {
    switch (number) {
      case 1:
        color = 1;
        return 1;
        // ignore: dead_code
        break;
      case 2:
        color = 2;
        return 2;
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
              //position question in question
              final DataModel item = state[0];
              return Center(
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    //enunciation
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(bottom: 40),
                                          child: Text(
                                            "Pergunta 1",
                                            style: numberQuestion,
                                          ),
                                        ),
                                        Text(
                                          item.enunciation,
                                          style: question,
                                        ),
                                      ],
                                    ),
                                    //buttons
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        //button one
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
                                              // ignore: sort_child_properties_last
                                              child: const Text('Sim',
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
                                                          ? green500
                                                          : gray100,
                                                  // background
                                                  foregroundColor: color == 1
                                                      ? white
                                                      : black700 // foreground
                                                  ),
                                            )), //answer

                                        //button two
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
                                              // ignore: sort_child_properties_last
                                              child: const Text('Não',
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
                                                        ? red500
                                                        : gray100, // background
                                                foregroundColor: color == 2
                                                    ? white
                                                    : black700, // foreground
                                              ),
                                            )), //answer
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
                                    : color > 0 && color < 3
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
                                                  .replyQuestionOne = true
                                              : color == 2
                                                  ? objReplyQuestions
                                                      .replyQuestionOne = false
                                                  : null;

                                          objReplyQuestions.idOne = item.id;

                                          debugPrint(
                                              'id question one: ${objReplyQuestions.idOne} | question one value: ${objReplyQuestions.replyQuestionOne}');
                                          Get.toNamed('/option');
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
    );
  }
}
