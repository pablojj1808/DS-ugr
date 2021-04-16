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
  static const List<String> filtrado = [
    'selecciona',
    'FECHA',
    'PRECIO',
    'TAMAÑO'
  ];

  EventosSet() {
    this._eventosOrigin = [];
    this._eventosCurrent = [];
    this._filtroActual = 0;
    this._cargarDatos();
  }

  void _cargarDatos() async {
    print('cargand datos...');
    var txt = await rootBundle.loadString('assets/data/eventos.json');
    var json = jsonDecode(txt);
    _eventosOrigin =
        List<Evento>.from(json.map((model) => Evento.fromJSON(model)));
    this._eventosCurrent = List<Evento>.from(this._eventosOrigin);
  }

  get eventos => this._eventosCurrent;
  get filtroActual => EventosSet.filtrado[this._filtroActual];
  set filtro(int n) => this._filtroActual = n;

  ordenar(String key) {
    int n = filtrado.indexOf(key);
    switch (n) {
      case 0:
        this._eventosCurrent = List<Evento>.from(this._eventosOrigin);
        break;
      case 1:
        this._eventosCurrent = _ordenarPorFecha();
        break;
      case 2:
        this._eventosCurrent = _ordenarPorPrecio();
        break;
      case 3:
        this._eventosCurrent = _ordenarPorTam();
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
    return '{$_eventosCurrent}';
  }
}
