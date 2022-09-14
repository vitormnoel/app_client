import 'package:connecting_api/api_acess/post_replay/replay_questions.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../styles/constants.dart';
import '../styles/home.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    "Conte-nos a sua experiência no Hospital Nasr Faiad",
                    style: title,
                    textAlign: TextAlign.center,
                  ),
                  // ignore: prefer_const_constructors
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0),
                    child: const Text(
                      'Contribua para melhor atendê-lo em menos de 1 minuto.',
                      style: subTitle,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Lottie.asset(
                'assets/images/home.json',
                width: MediaQuery.of(context).size.width * .5,
                height: MediaQuery.of(context).size.height * 1,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        height: MediaQuery.of(context).size.height * .08,
        width: MediaQuery.of(context).size.width * .2,
        child: ElevatedButton(
          onPressed: () async {
            String token = objReplyQuestions.identifierToken;
            String flow = objReplyQuestions.identifierFlow;
            createSessionApi(token, flow);

            objReplyQuestions.awaitIdSession();
          },
          style: TextButton.styleFrom(backgroundColor: red500),
          child: const Text(
            'Começar',
            style: next,
          ),
        ),
      ),
    );
  }
}
