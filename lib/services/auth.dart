import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //logar com e-mail e senha
  Future logarComEmailESenha(String email, String senha) async {
    try {
      UserCredential result =
          await _auth.signInWithEmailAndPassword(email: email, password: senha);
      User? user = result.user;
      return user;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  //deslogar

}
