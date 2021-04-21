import 'package:prueba/models/eventoSet.dart';
import 'package:intl/intl.dart';

/// Representa la entidad Evento (falta por completar)
class Evento {
  static final DateFormat dateFormat = DateFormat("yyyy-MM-dd");
  String _name, _ubicacion;
  double _precio;
  int _publico;
  DateTime _fecha;
  static int _idSig = 1;
  int _id;
  int _numEntradasVendidas;
  String _img;

  Evento(this._name, this._ubicacion, this._publico, this._precio, this._fecha,
      this._img) {
    _numEntradasVendidas = 0;
    this._asignarID();
  }

  Evento.fromJSON(Map<String, dynamic> json) {
    _name = json['nombre'];
    _ubicacion = json['ubicacion'];
    _publico = json['plazas'];
    _precio = json['precio'];
    _fecha = dateFormat.parse(json['fecha']);
    _img = json['img'];
    _numEntradasVendidas = 0;
    this._asignarID();
  }

  _asignarID() {
    this._id = _idSig;
    _idSig++;
  }

  get name => _name;
  get ubi => _ubicacion;
  get fecha => _fecha;
  get publico => _publico;
  get precio => _precio;
  get id => _id;
  get fechaFormat => dateFormat.format(this._fecha);
  get numEntradasVendidas => _numEntradasVendidas;
  get img => _img;

  @override
  String toString() {
    return 'Evento{_name: $_name, _ubicacion: $_ubicacion, _precio: $_precio, _publico: $_publico, _fecha: $_fecha, _id: $_id, _numEntradasVendidas: $_numEntradasVendidas}, _img: $_img';
  }

  Map<String, dynamic> toJson() =>
      {'nombre': name, 'ubi': this.ubi, "publico": publico};
}
