// ignore_for_file: use_build_context_synchronously
import 'package:app_client_beta/styles/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'components/form_login.dart';
import 'components/http_post_login.dart';
import 'components/text_login.dart';
import '../styles/login.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _identifier = TextEditingController();
  final _password = TextEditingController();
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Lottie.asset(
                  'assets/images/login.json',
                  width: MediaQuery.of(context).size.width * .5,
                  height: MediaQuery.of(context).size.height * 1,
                ),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 24),
                      child: Image.asset('assets/logo/logoback.png'),
                    ),
                    const TextLogin(
                      textLogin: 'Bem vindo(a)',
                      textSt: subTitleLogin,
                      padding: 1,
                    ),
                    const TextLogin(
                      textLogin: 'Acesse o departamento',
                      textSt: titleLogin,
                      padding: 8,
                    ),
                    SizedBox(
                      child: FormLogin(
                          identifier: _identifier, password: _password),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 50,
                            child: ElevatedButton(
                              style: buttonEnter,
                              onPressed: () async {
                                // ignore: unused_local_variable
                                FocusScopeNode correntFocus =
                                    FocusScope.of(context);
                                if (_formkey.currentState!.validate()) {
                                  Get.toNamed('/loading');
                                  bool ok = await loginRequest(
                                      _identifier.text, _password.text);

                                  if (ok) {
                                    Get.toNamed('/home');
                                  } else {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(snackBar);
                                  }
                                }
                              },
                              child: const Text('Entrar'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}

//mensage identifier error
const snackBar = SnackBar(
  content: Text(
    'Ops. Verifique a conexão com servidor ou Credenciais.',
    style: mensageError,
    textAlign: TextAlign.center,
  ),
  backgroundColor: Colors.red,
);
