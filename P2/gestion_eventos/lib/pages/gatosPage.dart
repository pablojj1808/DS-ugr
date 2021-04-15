import 'package:flutter/material.dart';
import 'package:gestion_eventos/pages/basicFrame.dart';

class GastosPage extends BasicFrame {
  Widget _menuLateral, _body, _appBar;

  GastosPage(@required this._appBar, @required this._menuLateral, @required this._body)
      : super(Scaffold(
          appBar: _appBar,
          body: _body,
          drawer: _menuLateral,
        ));
}
