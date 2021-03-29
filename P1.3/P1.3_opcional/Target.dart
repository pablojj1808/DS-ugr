import "dart:collection";
import 'Estado.dart';

class Target {
  late double _precio;
  late double _demanda;
  late Estado _state;
  late Queue<String> _logger;

  Target(this._precio) {
    this._demanda = 0;
    this._state = Estado.NEUTRO;
    this._logger = Queue();
  }

  double get precio => _precio;
  Estado get estado => _state;
  double get demanda => _demanda;

  set demanda(double demanda) => _demanda = demanda;
  set precio(double precio) => _precio = precio;

  addLog(String log) => _logger.add(log);

  leerLog() {
    int c = 1;
    String blue = "\x1B[34m";
    String rst = "\x1B[0m";
    print("..Logger.......................");
    while (_logger.isNotEmpty) {
      String frase = _logger.removeFirst();
      print("$blue $c: $frase $rst");
      c += 1;
    }
    print("..............................");
  }

  execute() {
    this.leerLog();
    print("PRECIO FINAL: ${_precio.toStringAsFixed(4)} €");
    print("ESTADO      : ${estados[_state.index]}");
    print("DEMANDA     : ${_demanda.toStringAsFixed(4)} %");

    if (_precio >= 100)
      _state = Estado.EN_OFERTA;
    else if (_precio < 50)
      _state = Estado.SIN_OFERTA;
    else
      _state = Estado.NEUTRO;

    print("\n\n ");
  }
}
