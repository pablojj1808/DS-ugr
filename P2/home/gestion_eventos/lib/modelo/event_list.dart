import 'package:gestion_eventos/modelo/evento.dart';

class EventList {

  List<Evento> _eventos;

  EventList (List<Evento> _eventos) {
    this._eventos = _eventos;
  }

  //Getters
  List<Evento> get eventos => _eventos;
  int get length => _eventos.length;
}