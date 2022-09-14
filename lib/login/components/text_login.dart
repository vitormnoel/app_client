import 'package:flutter/material.dart';

class TextLogin extends StatelessWidget {
  final String textLogin;
  final TextStyle textSt;
  final double padding;

  const TextLogin({
    required this.textLogin,
    required this.textSt,
    required this.padding,
    key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: padding),
      child: Text(textLogin, style: textSt),
    );
  }
}
