
import 'package:flutter/material.dart';

class HistorialPage extends StatelessWidget {
  static const String routeName = '/historial';
  Widget _menuLateral;
  Widget _content;

  HistorialPage(this._menuLateral, this._content);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Historial de eventos')),
      body: _content,
      drawer: _menuLateral,
    );
  }

}
