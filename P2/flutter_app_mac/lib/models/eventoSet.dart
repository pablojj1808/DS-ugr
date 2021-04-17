
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'evento.dart';

/// Representa al conjunto de eventos a los que ha asistido un usuario.
/// Satisface operaciones estadísticas sobre el conjunto de eventos que se
/// postula como el historial de eventos comprados de un usuario.
class EventosSet with ChangeNotifier {
  List<Evento> _eventosOrigin;
  List<Evento> _eventosCurrent;
  int _filtroActual;
  static bool Cargado = false;
  static const List<String> filtrado = [
    'por defecto',
    'FECHA',
    'PRECIO',
    'TAMAÑO'
  ];

  EventosSet() {
    this._eventosOrigin = <Evento>[];
    this._filtroActual = 0;

  }
/* cargarDatos() {
    this._eventosOrigin.add(Evento('Nombre 1', 'Madrid', 3000, 30, '2021-01-10'));
    this._eventosOrigin.add(Evento('Nombre 1', 'Madrid', 3000, 3, '2021-01-10'));
    this._eventosOrigin.add(Evento('Nombre 1', 'Madrid', 3000, 1, '2021-01-10'));
    this._eventosOrigin.add(Evento('Nombre 1', 'Madrid', 3000, 90, '2021-01-10'));
  }*/
  Future<List<Evento>> cargarDatos() async {
    var txt = await rootBundle.loadString('assets/data/eventos.json');
    var json = jsonDecode(txt);
    this._eventosOrigin = List<Evento>.from(json.map((model) => Evento.fromJSON(model)));
    this._eventosCurrent = List<Evento>.from(this._eventosOrigin);
    Cargado = true;
    return this._eventosOrigin;
  }


  List<Evento> get eventos {
    this.ordenar(filtroActual);
    return this._eventosCurrent;
  }

  get filtroActual => EventosSet.filtrado[this._filtroActual];
  get tam => this._eventosOrigin.length;

  ordenar(String key) {
    int n = filtrado.indexOf(key);
    switch (n) {
      case 0:
        this._eventosCurrent = List<Evento>.from(this._eventosOrigin);
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
    this._eventosCurrent.sort((e1, e2) => e1.fecha.compareTo(e2.fecha));
  }

  _ordenarPorPrecio() {
    this._eventosCurrent.sort((e1, e2) => e1.precio.compareTo(e2.precio));
  }

  _ordenarPorTam() {
    this._eventosCurrent.sort((e1, e2) => e1.publico.compareTo(e2.publico));
  }

  @override
  String toString() {
    return '{$_eventosOrigin}';
  }
}
