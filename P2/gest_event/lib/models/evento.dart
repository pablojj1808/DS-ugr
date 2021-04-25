import 'package:gest_event/models/eventoSet.dart';
import 'package:intl/intl.dart';

/// Representa la entidad Evento (falta por completar)
class Evento {
  static final DateFormat dateFormat = DateFormat("yyyy-MM-dd");
  String _name, _ubicacion;
  double _precio;
  int _publico;
  DateTime _fecha;
  int _id;
  int _numEntradasVendidas;
  String _img;

  Evento(this._name, this._ubicacion, this._publico, this._precio, this._fecha,
      this._img) {
    _numEntradasVendidas = 0;
  }

  Evento.fromJSON(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['nombre'];
    _ubicacion = json['ubicacion'];
    _publico = json['plazas'];
    _precio = json['precio'];
    _fecha = dateFormat.parse(json['fecha']);
    _img = null;
    _numEntradasVendidas = 0;
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
    return 'Evento{_id: $_id ,_name: $_name, _ubicacion: $_ubicacion, _precio: $_precio, _publico: $_publico, _fecha: $_fecha,  _numEntradasVendidas: $_numEntradasVendidas},';
  }

  Map<String, dynamic> toJson() =>
      {'nombre': name, 'ubi': this.ubi, "publico": publico};
}
