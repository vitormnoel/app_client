// ignore_for_file: prefer_typing_uninitialized_variables, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../api_acess/http_controller.dart';
import '../../api_acess/post_replay/replay_questions.dart';
import '../../api_acess/data_questions/data_model.dart';
import '../../styles/constants.dart';
import '../../styles/questions.dart';

class IconFirst extends GetView<HttpController> {
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
              final DataModel item = state[2];
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
                                      //enunciation
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 40),
                                            child: Text(
                                              "Pergunta 3",
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
                                            MainAxisAlignment.spaceAround,
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
                                                .18,
                                            child: ElevatedButton(
                                              // ignore: prefer_const_constructors, sort_child_properties_last
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 8, bottom: 8),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    SvgPicture.asset(
                                                      'assets/icons/bad.svg',
                                                      width: 80,
                                                      height: 80,
                                                    ),
                                                    Text(item.options![0],
                                                        style: option),
                                                  ],
                                                ),
                                              ),
                                              onPressed: () {
                                                setState(() {
                                                  ChangeColorButton(1);
                                                });
                                              },
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor: color == 0
                                                      ? gray100
                                                      : color == 1
                                                          ? red500
                                                          : gray100,
                                                  // background
                                                  foregroundColor: color == 1
                                                      ? white
                                                      : black700 // foreground
                                                  ),
                                            ),
                                          ),
                                          //button two
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .2,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .18,
                                            child: ElevatedButton(
                                              // ignore: prefer_const_constructors, sort_child_properties_last
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 8, bottom: 8),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    SvgPicture.asset(
                                                      'assets/icons/medium.svg',
                                                      width: 80,
                                                      height: 80,
                                                    ),
                                                    Text(item.options![1],
                                                        style: option),
                                                  ],
                                                ),
                                              ),

                                              onPressed: () {
                                                setState(() {
                                                  ChangeColorButton(2);
                                                });
                                              },
                                              style: ElevatedButton.styleFrom(
                                                  backgroundColor: color == 0
                                                      ? gray100
                                                      : color == 2
                                                          ? yellow700
                                                          : gray100,
                                                  // background
                                                  foregroundColor: color == 2
                                                      ? white
                                                      : black700 // foreground
                                                  ),
                                            ),
                                          ), //answer
                                          //button three
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .2,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .18,
                                            child: ElevatedButton(
                                              // ignore: prefer_const_constructors, sort_child_properties_last
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 8, bottom: 8),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceAround,
                                                  children: [
                                                    SvgPicture.asset(
                                                      'assets/icons/excellent.svg',
                                                      width: 80,
                                                      height: 80,
                                                    ),
                                                    Text(item.options![2],
                                                        style: option),
                                                  ],
                                                ),
                                              ),
                                              onPressed: () {
                                                setState(() {
                                                  ChangeColorButton(3);
                                                });
                                              },
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: color == 0
                                                    ? gray100
                                                    : color == 3
                                                        ? green700
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
                                          ? yellow700
                                          : red500,
                                  // Background Color
                                ),
                                onPressed: color == 0
                                    ? null
                                    : color > 0 && color < 4
                                        ? () {
                                            color == 1
                                                ? objReplyQuestions
                                                        .replyQuestionThree =
                                                    item.options![0]
                                                : color == 2
                                                    ? objReplyQuestions
                                                            .replyQuestionThree =
                                                        item.options![1]
                                                    : color == 3
                                                        ? objReplyQuestions
                                                                .replyQuestionThree =
                                                            item.options![2]
                                                        : null;

                                            objReplyQuestions.idThree = item.id;

                                            debugPrint(
                                                'id question Three: ${objReplyQuestions.idThree} | question Three value: ${objReplyQuestions.replyQuestionThree}');
                                            Get.toNamed('/iconsecond');
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
