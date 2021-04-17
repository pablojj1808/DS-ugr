
import 'package:gestion_eventos/modelo/event_list.dart';
import 'package:gestion_eventos/modelo/user_list.dart';
import 'package:gestion_eventos/modelo/usuario.dart';
import 'package:gestion_eventos/modelo/evento.dart';

/*
class Modelo {

  List<Usuario> _usuarios;
  List<Evento> _eventos;
  List<Ticket> _tickets;

  Modelo(List<Usuario> _usuarios, List<Evento> _eventos, List<Ticket> _tickets) {

    Usuario u = _usuarios[0];
    Evento e = _eventos[0];
    Ticket t = _tickets[0];

    e.venderEntrada(u);
    u.comprarEntrada(t);

    _usuarios.add(u);
    _eventos.add(e);
    _tickets.add(t);
  }

  //Getters
  List<Usuario> get usuarios => _usuarios;
  int get usuariosLength => _usuarios.length;
  List<Evento> get eventos => _eventos;
  int  get eventosLength => _eventos.length;
  List<Ticket> get  tickets =>  _tickets;
  int  get  ticketsLength =>  _tickets.length;

}*/

final UserList usuarios = UserList(
    [ Usuario(1100, "Sandra", "@sandra_", "sandra@gmail.com", 658892145),],
);

final EventList eventos = EventList(
  [
  Evento(1111, "Estopa", "Sala La Riviera Madrid", "sdfsfsdfsdfsdfsdf", DateTime.parse('2021-04-17'), 50, "15:50", "../../assets/img/estopa.png"),
  Evento(1112, "The Weeknd", "WiZink Center Madrid","sdfsfsdfsdfsdfsdf", DateTime.parse('2021-04-17'), 50, "15:50", "../../assets/img/theweekend.jpg"),
  Evento(1113, "Nil Moliner", "Sala La Riviera Madrid", "sdfsfsdfsdfsdfsdf", DateTime.parse('2021-04-17'), 50, "15:50", "../../assets/img/nilmoliner.jpg"),
  Evento(1114, "Vetusta Morla", "Sala M100 de Córdoba", "sdfsfsdfsdfsdfsdf", DateTime.parse('2021-04-17'), 50, "15:50", "../../assets/img/vetustamorla.jpg"),
  Evento(1115, "Supersubmarina", "Sala La Riviera Madrid", "sdfsfsdfsdfsdfsdf", DateTime.parse('2021-04-17'), 50, "15:50", "../../assets/img/supersubmarina.jpg"),
  Evento(1116, "Coldplay", "WiZink Center Madrid", "sdfsfsdfsdfsdfsdf", DateTime.parse('2021-04-17'), 50, "15:50", "../../assets/img/coldplay.jpg"),
  Evento(1117, "El Rey Leon", "Teatro lope de vega", "sdfsfsdfsdfsdfsdf", DateTime.parse('2021-04-17'), 50, "15:50", "../../assets/img/elreyleon.jpg"),
  Evento(1118, "Torneo padel", "Granada", "sdfsfsdfsdfsdfsdf", DateTime.parse('2021-04-17'), 50, "15:50", "../../assets/img/padel.jpg"),
  Evento(1119, "Torneo Tenis", "Lorca, Mucia", "sdfsfsdfsdfsdfsdf", DateTime.parse('2021-04-17'), 50, "15:50", "../../assets/img/tenis.jpg"),
  Evento(1120, "Torneo Voley Playa", "Granada", "sdfsfsdfsdfsdfsdf", DateTime.parse('2021-04-17'), 50, "15:50", "../../assets/img/voley.jpg"),
  ]
);

final EventList recomendaciones = EventList(
  [
  Evento(1119, "Torneo Tenis", "Lorca, Mucia", "sdfsfsdfsdfsdfsdf", DateTime.parse('2021-04-17'), 50, "15:50", "../../assets/img/tenis.jpg"),
  Evento(1113, "Nil Moliner", "Sala La Riviera Madrid", "sdfsfsdfsdfsdfsdf", DateTime.parse('2021-04-17'), 50, "15:50", "../../assets/img/nilmoliner.jpg"),
  Evento(1115, "Supersubmarina", "Sala La Riviera Madrid", "sdfsfsdfsdfsdfsdf", DateTime.parse('2021-04-17'), 50, "15:50", "../../assets/img/supersubmarina.jpg"),
  Evento(1118, "Torneo padel", "Granada", "sdfsfsdfsdfsdfsdf", DateTime.parse('2021-04-17'), 50, "15:50", "../../assets/img/padel.jpg"),
  Evento(1111, "Estopa", "Sala La Riviera Madrid", "sdfsfsdfsdfsdfsdf", DateTime.parse('2021-04-17'), 50, "15:50", "../../assets/img/coldplay.jpg"),
  Evento(1120, "Torneo Voley Playa", "Granada", "sdfsfsdfsdfsdfsdf", DateTime.parse('2021-04-17'), 50, "15:50", "../../assets/img/voley.jpg"),
  ]
);

final EventList populares = EventList(
  [
  Evento(1117, "El Rey Leon", "Teatro lope de vega", "sdfsfsdfsdfsdfsdf", DateTime.parse('2021-04-17'), 50, "15:50", "../../assets/img/elreyleon.jpg"),
  Evento(1112, "The Weeknd", "WiZink Center Madrid","sdfsfsdfsdfsdfsdf", DateTime.parse('2021-04-17'), 50, "15:50", "../../assets/img/theweekend.jpg"),
  Evento(1120, "Torneo Voley Playa", "Granada", "sdfsfsdfsdfsdfsdf", DateTime.parse('2021-04-17'), 50, "15:50", "../../assets/img/voley.jpg"),
  Evento(1116, "Coldplay", "WiZink Center Madrid", "sdfsfsdfsdfsdfsdf", DateTime.parse('2021-04-17'), 50, "15:50", "../../assets/img/coldplay.jpg"),
  Evento(1114, "Vetusta Morla", "Sala M100 de Córdoba", "sdfsfsdfsdfsdfsdf", DateTime.parse('2021-04-17'), 50, "15:50", "../../assets/img/vetustamorla.jpg"),
  ]
);

final EventList proximos = EventList(
  [
  Evento(1117, "El Rey Leon", "Teatro lope de vega", "sdfsfsdfsdfsdfsdf", DateTime.parse('2021-05-17'), 50, "15:50", "../../assets/img/elreyleon.jpg"),
  Evento(1112, "The Weeknd", "WiZink Center Madrid","sdfsfsdfsdfsdfsdf", DateTime.parse('2021-04-17'), 50, "15:50", "../../assets/img/theweekend.jpg"),
  Evento(1120, "Torneo Voley Playa", "Granada", "sdfsfsdfsdfsdfsdf", DateTime.parse('2021-04-17'), 50, "15:50", "../../assets/img/voley.jpg"),
  Evento(1116, "Coldplay", "WiZink Center Madrid", "sdfsfsdfsdfsdfsdf", DateTime.parse('2021-04-17'), 50, "15:50", "../../assets/img/coldplay.jpg"),
  Evento(1114, "Vetusta Morla", "Sala M100 de Córdoba", "sdfsfsdfsdfsdfsdf", DateTime.parse('2021-04-17'), 50, "15:50", "../../assets/img/vetustamorla.jpg"),
  ]
);

final Evento mejorValorado = Evento( 1117, "El Rey Leon", "Teatro lope de vega", "sdfsfsdfsdfsdfsdf", DateTime.parse('2021-05-17'), 50, "15:50", "../../assets/img/elreyleon.jpg");


