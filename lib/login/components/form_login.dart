import 'package:flutter/material.dart';

import '../../styles/login.dart';
import 'text_field_login.dart';
import 'text_login.dart';

class FormLogin extends StatelessWidget {
  const FormLogin({
    Key? key,
    required identifier,
    required password,
  })  : _identifier = identifier,
        _password = password,
        super(key: key);

  final TextEditingController _identifier;
  final TextEditingController _password;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TextLogin(
            textLogin: 'ID',
            textSt: label,
            padding: 16.0,
          ),
          TextFieldLogin(
            textInput: 'Digite o ID do departamento',
            textKeyboard: TextInputType.number,
            obscure: false,
            controller: _identifier,
            padding: 24,
          ),
          const TextLogin(
            textLogin: 'Senha',
            textSt: label,
            padding: 16,
          ),
          TextFieldLogin(
            textInput: 'Digite sua senha',
            textKeyboard: TextInputType.multiline,
            obscure: true,
            controller: _password,
            padding: 0,
          ),
        ],
      ),
    );
  }
}
