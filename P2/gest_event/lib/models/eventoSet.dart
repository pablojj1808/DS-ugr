
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'evento.dart';

/// Representa al conjunto de eventos a los que ha asistido un usuario.
/// Satisface operaciones estadísticas sobre el conjunto de eventos que se
/// postula como el historial de eventos comprados de un usuario.
class EventosSet with ChangeNotifier {
  List<Evento> _eventos;

  int _filtroActual;
  static const List<String> filtrado = [
    'por defecto',
    'FECHA',
    'PRECIO',
    'TAMAÑO'
  ];

  EventosSet() {
    this._eventos = <Evento>[];
    this._filtroActual = 0;

  }

  Future<EventosSet> cargarDatos() async {
    var txt = await rootBundle.loadString('assets/data/eventos.json');
    var json = jsonDecode(txt);
    this._eventos = List<Evento>.from(json.map((model) => Evento.fromJSON(model)));
    this.ordenar(filtrado[this._filtroActual]);
    return this;
  }


  List<Evento> get eventos {
    return this._eventos;
  }

  get filtroActual => EventosSet.filtrado[this._filtroActual];
  get tam => this._eventos.length;

  ordenar(String key) {
    int n = filtrado.indexOf(key);
    switch (n) {
      case 0:
        _ordenarPorID();
        break;
      case 1:
        _ordenarPorFecha();
        break;
      case 2:
        _ordenarPorPrecio();
        break;
      case 3:
        _ordenarPorTam();
        break;
    }
    if(n != -1) this._filtroActual = n;
    notifyListeners();
  }

  _ordenarPorFecha() {
    this._eventos.sort((e1, e2) => e1.fecha.compareTo(e2.fecha));
  }

  _ordenarPorPrecio() {
    this._eventos.sort((e1, e2) => e1.precio.compareTo(e2.precio));
  }

  _ordenarPorTam() {
    this._eventos.sort((e1, e2) => e1.publico.compareTo(e2.publico));
  }

  _ordenarPorID() {
    this._eventos.sort((e1, e2) => e1.id.compareTo(e2.id));
  }

  @override
  String toString() {
    return '{$_eventos}\n';
  }
}
