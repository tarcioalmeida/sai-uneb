import 'package:cloud_firestore/cloud_firestore.dart';

class Usuario {
  String? uid;
  String? cpf;
  String? matricula;
  int? tipo_usuario;
  //final Classe classe;

  Usuario(
    this.uid,
    this.cpf,
    this.matricula,
    this.tipo_usuario,
  );
}

/*
class UsuarioDAO {
  

  static Future<Usuario> loadUsuario(Usuario usuario) {
    final FirebaseFirestore _firestore = FirebaseFirestore.instance;
    final CollectionReference _mainCollection = _firestore.collection('Usuarios');

    DocumentReference documentReferencer = _mainCollection.doc()
  }
}
*/