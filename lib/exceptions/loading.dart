import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../styles/constants.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * .5,
          height: MediaQuery.of(context).size.height * 1,
          child: Lottie.asset(
            'assets/exceptions/loading.json',
            width: MediaQuery.of(context).size.width * .5,
            height: MediaQuery.of(context).size.height * 1,
          ),
        ),
      ),
    );
  }
}
