import 'package:flutter/material.dart';
import 'package:gest_event2/routes/routes.dart';

class UbicacionPage extends StatelessWidget {
  static const String routeName = '/ubicacion';
  Widget _menuLateral;

  UbicacionPage(this._menuLateral);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Inicio')),
      body: _content(context),
      drawer: _menuLateral,
    );
  }

  Widget _content(BuildContext context) {
    return AlertDialog(
      title: Text('!En construcción!'),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[Text('Esta página no está aún disponible...')],
        ),
      ),
      actions: <Widget>[
        TextButton(
            child: Text('Vale'),
            onPressed: () =>
                Navigator.pushReplacementNamed(context, Routes.home)),
      ],
    );
  }
}
