import 'package:flutter/material.dart';

import 'login_form.dart';

class Autenticacao extends StatefulWidget {
  const Autenticacao({Key? key}) : super(key: key);

  @override
  _AutenticacaoState createState() => _AutenticacaoState();
}

class _AutenticacaoState extends State<Autenticacao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: LoginForm(),
    );
  }
}
