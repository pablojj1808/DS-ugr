import 'package:gestion_eventos/modelo/usuario.dart';

class Evento {
  int _id;
  String _nombre;
  String _descripcion;
  DateTime _fecha;
  int _numEntradas;
  int _numEntadasVendidas;
  String _horaInicio;
  List<Usuario> _publico;
  String _img;
  String _lugar;

  Evento(int _id, String _nombre, String _lugar, String _descripcion,
      DateTime _fecha, int _numEntradas, String _horaInicio, String _img) {
    this._id = _id;
    this._nombre = _nombre;
    this._lugar = _lugar;
    this._descripcion = _descripcion;
    this._fecha = _fecha;
    this._numEntradas = _numEntradas;
    this._numEntadasVendidas = 0;
    this._horaInicio = _horaInicio;
    this._img = _img;
  }

  //Getters
  int get id => _id;
  String get nombre => _nombre;
  String get lugar => _lugar;
  String get descripcion => _descripcion;
  DateTime get fecha => _fecha;
  int get numEntradas => _numEntradas;
  int get numEntradasVendidas => _numEntadasVendidas;
  String get horaInicio => _horaInicio;
  List<Usuario> get publico => _publico;
  String get img => _img;

  //Setters
  set numEntradasVendidas(int numEntradasVendidas) =>
      _numEntadasVendidas = numEntradasVendidas;

  venderEntrada(Usuario u) {
    _numEntadasVendidas++;
    _publico.add(u);
  }
}
