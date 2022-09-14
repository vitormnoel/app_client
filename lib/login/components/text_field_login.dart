// ignore_for_file: file_names

import 'package:flutter/material.dart';

class TextFieldLogin extends StatelessWidget {
  final String textInput;
  // final Function validator;
  final TextInputType textKeyboard;
  final TextEditingController controller;
  final bool obscure;
  final double padding;

  const TextFieldLogin({
    required this.textInput,
    // this.validator,
    required this.textKeyboard,
    required this.controller,
    required this.obscure,
    required this.padding,
    key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: padding),
      child: TextFormField(
        // validator: validator(),
        controller: controller,
        obscureText: obscure,
        keyboardType: textKeyboard,
        decoration: InputDecoration(
            hintText: textInput,
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(4.0)))),
      ),
    );
  }
}
