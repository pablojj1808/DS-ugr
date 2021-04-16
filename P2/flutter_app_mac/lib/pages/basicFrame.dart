
import 'package:flutter/material.dart';
import 'package:flutter_app_mac/routes/routes.dart';


class BasicFrame extends StatelessWidget {
  Widget _content;

  BasicFrame(this._content);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gestión Eventos',
      home: _content,
      routes: Routes.obtenerRutas(),
    );
  }
}