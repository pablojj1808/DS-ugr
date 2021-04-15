import 'package:flutter/material.dart';
import 'package:gestion_eventos/pages/basicFrame.dart';

class GastosPage extends StatelessWidget {
  static const String routeName = '/gastos';
  Widget _menuLateral;
  StatefulWidget _content;

  GastosPage(this._menuLateral, this._content);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gastos')),
      body: _content,
      drawer: _menuLateral,
    );
  }

}
