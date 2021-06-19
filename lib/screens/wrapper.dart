import 'package:flutter/material.dart';
import 'package:sai/screens/login/autenticacao.dart';
import 'home/home.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Return either home or autenticacao widget
    return Autenticacao();
  }
}
