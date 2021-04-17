import 'package:gestion_eventos/modelo/usuario.dart';


class UserList {

  List<Usuario> _usuarios;

  UserList (List<Usuario> _usuarios) {
    this._usuarios = _usuarios;
  }

  //Getters
  List<Usuario> get usuarios => _usuarios;
  int get usuariosLength => _usuarios.length;
}