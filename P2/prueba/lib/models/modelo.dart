import 'evento.dart';

final List<Evento> recomendaciones = [
  Evento("Torneo Tenis", "Lorca, Mucia", 50, 20.0, DateTime.parse('2021-05-17'),
      "assets/img/tenis.jpg"),
  Evento("Nil Moliner", "Sala La Riviera Madrid", 50, 20.0,
      DateTime.parse('2021-05-17'), "assets/img/nilmoliner.jpg"),
  Evento("Supersubmarina", "Sala La Riviera Madrid", 50, 20.0,
      DateTime.parse('2021-05-17'), "assets/img/supersubmarina.jpg"),
  Evento("Torneo padel", "Granada", 50, 20.0, DateTime.parse('2021-05-17'),
      "assets/img/padel.jpg"),
  Evento("Estopa", "Sala La Riviera Madrid", 50, 20.0,
      DateTime.parse('2021-05-17'), "assets/img/estopa.png"),
  Evento("Torneo Voley Playa", "Granada", 50, 20.0,
      DateTime.parse('2021-05-17'), "assets/img/voley.jpg"),
];

final List<Evento> populares = [
  Evento("El Rey Leon", "Teatro lope de vega", 50, 20.0,
      DateTime.parse('2021-05-17'), "assets/img/elreyleon.jpg"),
  Evento("The Weeknd", "WiZink Center Madrid", 50, 20.0,
      DateTime.parse('2021-05-17'), "assets/img/theweekend.jpg"),
  Evento("Torneo Voley Playa", "Granada", 50, 20.0,
      DateTime.parse('2021-05-17'), "assets/img/voley.jpg"),
  Evento("Coldplay", "WiZink Center Madrid", 50, 20.0,
      DateTime.parse('2021-05-17'), "assets/img/coldplay.jpg"),
  Evento("Vetusta Morla", "Sala M100 de Córdoba", 50, 20.0,
      DateTime.parse('2021-05-17'), "assets/img/vetustamorla.jpg"),
];

final Evento mejorValorado = Evento("El Rey Leon", "Teatro lope de vega", 50,
    20, DateTime.parse('2021-05-17'), "assets/img/elreyleon.jpg");
