
class Eventos {
  String name;
  Eventos(this.name);
  List<Valoracion> _valoraciones;
}

enum Puntuacion {BAJA, MEDIA, ALTA};

class Valoracion {
  String comentario;
  Puntuacion puntos;
  Usuario escritor;
}

class Usuario {
  Map<String, double> _descuentos;
  String _name;
  String _descripcion;
  String _email;
  int _age;
  List<Eventos> _visitados;


  Usuario(Map<String, dynamic> json) {
    this._name = json['nombre'];
    this._email = json['email'];
    this._descripcion = json['descripcion'];
    this._age = json['edad'];
  }

  List<Eventos> get visitados => List<Eventos>.from(_visitados);

  set visitados(List<Eventos> visitados) {
    _visitados = visitados;
  }

  String get name => _name;

  set name(String name) {
    _name = name;
  }

  int get age => _age;

  set age(int age) {
    _age = age;
  }

  String get descripcion => _descripcion;

  set descripcion(String descripcion) {
    _descripcion = descripcion;
  }

  Map<String, double> get descuentos => _descuentos;

  set descuentos(Map<String, double> descuentos) {
    _descuentos = descuentos;
  }

  String get email => _email;

  set email(String email) {
    _email = email;
  }

  @override
  String toString() {
    return 'User{_descuentos: $_descuentos, _name: $_name, _descripcion: $_descripcion, _email: $_email, _age: $_age, _visitados: $_visitados}';
  }
}
