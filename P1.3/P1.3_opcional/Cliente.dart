import 'FilterManager.dart';

class Cliente {
  FilterManager? _fmanager;

  set filterManager(FilterManager fm) => _fmanager = fm;
  
  sendRequest() {
    _fmanager!.filterRequest();
  }
}
