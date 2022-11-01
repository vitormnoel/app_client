// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../api_acess/http_controller.dart';
import '../../api_acess/post_replay/replay_questions.dart';
import '../../api_acess/data_questions/data_model.dart';
import '../../styles/constants.dart';
import '../../styles/questions.dart';

// ignore: use_key_in_widget_constructors
class Avarage extends GetView<HttpController> {
  late int color = 0; //enable and disable button
  var pressed;

// ignore: non_constant_identifier_names
  ChangeColorButton(int number) {
    if (number > 0 && number < 11) {
      color = number;
      pressed = () {};
      return number;
    } else {
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
              final DataModel item = state[5];
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
                                color: Colors.white,
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
                                              "Pergunta 6",
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
                                                .06,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .08,
                                            child: ElevatedButton(
                                              // ignore: sort_child_properties_last
                                              child: const Text('1',
                                                  style: option),
                                              onPressed: () {
                                                setState(() {
                                                  ChangeColorButton(1);
                                                });
                                              },
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: color == 0
                                                    ? const Color(0xFFD06F71)
                                                    : color == 1
                                                        ? const Color(
                                                            0xFFD06F71)
                                                        : gray100,
                                                // background
                                                foregroundColor: color == 0
                                                    ? white
                                                    : color == 1
                                                        ? white
                                                        : black700, // foreground
                                              ),
                                            ),
                                          ), //answer
                                          //button two
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .06,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .08,
                                            child: ElevatedButton(
                                              // ignore: sort_child_properties_last
                                              child: const Text('2',
                                                  style: option),
                                              onPressed: () {
                                                setState(() {
                                                  ChangeColorButton(2);
                                                });
                                              },
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: color == 0
                                                    ? const Color(0xFFD52029)
                                                    : color == 2
                                                        ? const Color(
                                                            0xFFD52029)
                                                        : gray100, // background
                                                foregroundColor: color == 0
                                                    ? white
                                                    : color == 2
                                                        ? white
                                                        : black700, // foreground
                                              ),
                                            ),
                                          ),
                                          //button three
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .06,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .08,
                                            child: ElevatedButton(
                                              // ignore: sort_child_properties_last
                                              child: const Text('3',
                                                  style: option),
                                              onPressed: () {
                                                setState(() {
                                                  ChangeColorButton(3);
                                                });
                                              },
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: color == 0
                                                    ? const Color(0xFFE95223)
                                                    : color == 3
                                                        ? const Color(
                                                            0xFFE95223)
                                                        : gray100, // background
                                                foregroundColor: color == 0
                                                    ? white
                                                    : color == 3
                                                        ? white
                                                        : black700, // foreground
                                              ),
                                            ),
                                          ),
                                          //button four
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .06,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .08,
                                            child: ElevatedButton(
                                              // ignore: sort_child_properties_last
                                              child: const Text('4',
                                                  style: option),
                                              onPressed: () {
                                                setState(() {
                                                  ChangeColorButton(4);
                                                });
                                              },
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: color == 0
                                                    ? const Color(0xFFEA6F22)
                                                    : color == 4
                                                        ? const Color(
                                                            0xFFEA6F22)
                                                        : gray100, // background
                                                foregroundColor: color == 0
                                                    ? white
                                                    : color == 4
                                                        ? white
                                                        : black700, // foreground
                                              ),
                                            ),
                                          ),
                                          //button five
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .06,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .08,
                                            child: ElevatedButton(
                                              // ignore: sort_child_properties_last
                                              child: const Text('5',
                                                  style: option),
                                              onPressed: () {
                                                setState(() {
                                                  ChangeColorButton(5);
                                                });
                                              },
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: color == 0
                                                    ? const Color(0xFFFDC729)
                                                    : color == 5
                                                        ? const Color(
                                                            0xFFFDC729)
                                                        : gray100, // background
                                                foregroundColor: color == 0
                                                    ? white
                                                    : color == 5
                                                        ? white
                                                        : black700, // foreground
                                              ),
                                            ),
                                          ),
                                          //button six
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .06,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .08,
                                            child: ElevatedButton(
                                              // ignore: sort_child_properties_last
                                              child: const Text('6',
                                                  style: option),
                                              onPressed: () {
                                                setState(() {
                                                  ChangeColorButton(6);
                                                });
                                              },
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: color == 0
                                                    ? const Color(0xFFEBDB0A)
                                                    : color == 6
                                                        ? const Color(
                                                            0xFFEBDB0A)
                                                        : gray100, // background
                                                foregroundColor: color == 0
                                                    ? white
                                                    : color == 6
                                                        ? white
                                                        : black700, // foreground
                                              ),
                                            ),
                                          ),
                                          //button seven
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .06,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .08,
                                            child: ElevatedButton(
                                              // ignore: sort_child_properties_last
                                              child: const Text('7',
                                                  style: option),
                                              onPressed: () {
                                                setState(() {
                                                  ChangeColorButton(7);
                                                });
                                              },
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: color == 0
                                                    ? const Color(0xFFE5E044)
                                                    : color == 7
                                                        ? const Color(
                                                            0xFFE5E044)
                                                        : gray100, // background
                                                foregroundColor: color == 0
                                                    ? white
                                                    : color == 7
                                                        ? white
                                                        : black700, // foreground
                                              ),
                                            ),
                                          ),
                                          //button eight
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .06,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .08,
                                            child: ElevatedButton(
                                              // ignore: sort_child_properties_last
                                              child: const Text('8',
                                                  style: option),
                                              onPressed: () {
                                                setState(() {
                                                  ChangeColorButton(8);
                                                });
                                              },
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: color == 0
                                                    ? const Color(0xFFC2D234)
                                                    : color == 8
                                                        ? const Color(
                                                            0xFFC2D234)
                                                        : gray100, // background
                                                foregroundColor: color == 0
                                                    ? white
                                                    : color == 8
                                                        ? white
                                                        : black700, // foreground
                                              ),
                                            ),
                                          ),
                                          //button nine
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .06,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .08,
                                            child: ElevatedButton(
                                              // ignore: sort_child_properties_last
                                              child: const Text('9',
                                                  style: option),
                                              onPressed: () {
                                                setState(() {
                                                  ChangeColorButton(9);
                                                });
                                              },
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: color == 0
                                                    ? const Color(0xFFAEC93C)
                                                    : color == 9
                                                        ? const Color(
                                                            0xFFAEC93C)
                                                        : gray100, // background
                                                foregroundColor: color == 0
                                                    ? white
                                                    : color == 9
                                                        ? white
                                                        : black700, // foreground
                                              ),
                                            ),
                                          ),
                                          //button ten
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                .06,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                .08,
                                            child: ElevatedButton(
                                              // ignore: sort_child_properties_last
                                              child: const Text('10',
                                                  style: option),
                                              onPressed: () {
                                                setState(() {
                                                  ChangeColorButton(10);
                                                });
                                              },
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: color == 0
                                                    ? const Color(0xff66B44E)
                                                    : color == 10
                                                        ? const Color(
                                                            0xff66B44E)
                                                        : gray100, // background
                                                foregroundColor: color == 0
                                                    ? white
                                                    : color == 10
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
                              width: MediaQuery.of(context).size.width * .10,
                              height: MediaQuery.of(context).size.height * .08,
                              child: TextButton(
                                style: TextButton.styleFrom(
                                  backgroundColor: color == 0
                                      ? gray100
                                      : color > 0 && color < 11
                                          ? yellow500
                                          : red800,
                                  // Background Color
                                ),
                                onPressed: color == 0
                                    ? null
                                    : color > 0 && color < 11
                                        ? () async {
                                            objReplyQuestions.replyQuestionSix =
                                                color;
                                            objReplyQuestions.idSix = item.id;

                                            debugPrint(
                                                ':::::::>> ${objReplyQuestions.replyQuestionOne} | ${objReplyQuestions.replyQuestionTwo} | ${objReplyQuestions.replyQuestionThree} | ${objReplyQuestions.replyQuestionFour} | ${objReplyQuestions.replyQuestionFive} | ${objReplyQuestions.replyQuestionSix}');

                                            objReplyQuestions.postAll();
                                            Get.toNamed('/computing');
                                          }
                                        : null,
                                child: const Text(
                                  'Próximo',
                                  style: next,
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
