import 'package:flutter_app_mac/models/eventoSet.dart';
import 'package:intl/intl.dart';

/// Representa la entidad Evento (falta por completar)
class Evento {
  static final DateFormat dateFormat = DateFormat("yyyy-MM-dd");
  String _name, _ubicacion;
  double _precio;
  int _publico;
  DateTime _fecha;
  static int _idSig = 0;
  int _id;

  Evento(this._name, this._ubicacion, this._publico, this._precio, this._fecha);

  Evento.fromJSON(Map<String, dynamic> json) {
    Evento(json['nombre'], json['ubicacion'], json['plazas'], json['precio'],
        dateFormat.parse(json['fecha']));
    this._id = _idSig;
    _idSig++;
  }

  get name => _name;
  get ubi => _ubicacion;
  get fecha => _fecha;
  get publico => _publico;
  get precio => _precio;
  get id => _id;

  @override
  String toString() => "$_name   ~   $_ubicacion";

  Map<String, dynamic> toJson() =>
      {'nombre': name, 'ubi': this.ubi, "publico": publico};
}
