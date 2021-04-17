
class Ticket{

  int _id;
  double _precio;
  int _idEvento;

  Ticket(int _id,  double _precio, int _idEvento) {
    this._id = _id;
    this._precio =  _precio;
    this._idEvento =  _idEvento;
  }

  //Getters
  int get id => _id;
  double get precio => _precio;
  int get idEvento => _idEvento;

}