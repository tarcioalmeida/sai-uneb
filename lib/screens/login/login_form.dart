import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sai/services/auth.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final AuthService _auth = AuthService();

  //final FirebaseAuth _autenticacao = FirebaseAuth.instance;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();
  bool _success = false;
  bool _userEmail = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 60.0),
            child: Center(
              child: Container(
                  width: 400,
                  height: 300,
                  child: Image.asset(
                    'lib/assets/images/logoeditado.png',
                    height: 540,
                    width: 180,
                  )),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextField(
              controller: _emailController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  hintText: 'Digite o e-mail'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 15.0, right: 15.0, top: 15, bottom: 40),
            child: TextField(
              controller: _senhaController,
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Senha',
                  hintText: 'Digite a senha'),
            ),
          ),
          Container(
            height: 50,
            width: 250,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(20)),
            child: ElevatedButton(
              onPressed: () async {
                debugPrint('cliquei no botão entrar.');

                final String _email = _emailController.text;
                final String _senha = _senhaController.text;

                if (_email.isNotEmpty && _senha.isNotEmpty) {
                  debugPrint('not null: email $_email e senha $_senha');
                  dynamic resultado =
                      await _auth.logarComEmailESenha(_email, _senha);

                  if (resultado == null) {
                    debugPrint('Erro ao logar');
                  } else {
                    debugPrint('Logou!');
                    debugPrint(resultado.toString());
                  }
                }
              },
              child: Text(
                'Entrar',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
          SizedBox(
            height: 130,
          ),
        ],
      ),
    );
  }
}
