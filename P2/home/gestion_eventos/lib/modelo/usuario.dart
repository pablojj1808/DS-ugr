
import 'package:gestion_eventos/modelo/ticket.dart';


class Usuario {

  int _id;
  String _nombre;
  String _nick;
  String _correo;
  int _telefono;
  List<Ticket> _entradas;
  double _precioGastado;


  Usuario(int _id,  String _nombre, String _nick, String _correo,  int _telefono) {
    this._id = _id;
    this._nombre =  _nombre;
    this._nick =  _nick;
    this._correo = _correo;
    this._telefono = _telefono;
    this._precioGastado = 0.0;
  }

  //Getters
  int get id => _id;
  String get nombre => _nombre;
  String get nick => _nick;
  String get correo => _correo;
  int get telefono => _telefono;
  double get precioGastado => _precioGastado;
  List<Ticket> get entradoas => _entradas;

  //Setters

  comprarEntrada(Ticket t) {
    _precioGastado += t.precio ;
    _entradas.add(t);
  }



}
