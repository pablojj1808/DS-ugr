

import 'dart:convert';
import 'dart:io';
import 'package:flutter/services.dart' show rootBundle;

/// Representa la entidad Evento (falta por completar)
class Evento {
  String _name, _ubicacion;
  int _publico;

  Evento(this._name, this._ubicacion, this._publico);

  Evento.fromJSON(Map<String, dynamic> json) {
    _name = json['nombre'];
    _ubicacion = json['ubi'];
    _publico = json['publico'];
  }

  get name => _name;
  get ubi => _ubicacion;
  get publico => _publico;

  @override
  String toString() => "$_name   ~   $_ubicacion";

  Map<String, dynamic> toJson() =>
      {'nombre': name, 'ubi': this.ubi, "publico": publico};
}

/// Representa al conjunto de eventos a los que ha asistido un usuario.
/// Satisface operaciones estadísticas sobre el conjunto de eventos que se
/// postula como el historial de eventos comprados de un usuario.
class EventosSet {
  List<Evento> _eventos;

  /*EventosSet(String fichero) {
    var f = new File(fichero);
    String listaS = f.readAsStringSync();
    var json = jsonDecode(listaS);
    _eventos = List<Evento>.from(json.map((model)=> Evento.fromJSON(model)));
  }*/

  EventosSet() {
    _cargarDatos();
  }

  _cargarDatos() async {
    var txt = await rootBundle.loadString('assets/data/eventos.json');
    var json = jsonDecode(txt);
    _eventos = List<Evento>.from(json.map((model)=> Evento.fromJSON(model)));
  }

  EventosSet.Provisional() {
    _eventos =  [
      Evento("name A", "_ubicacion", 900),
      Evento("name B", "_ubicacion 2", 2900),
    ];
  }

  get eventos => _eventos;

  @override
  String toString() {
    return '{$_eventos}';
  }
}