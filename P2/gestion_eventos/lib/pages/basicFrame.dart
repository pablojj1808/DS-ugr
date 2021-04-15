
import 'package:flutter/material.dart';
import 'package:gestion_eventos/pages/homePage.dart';
import 'package:gestion_eventos/routes/routes.dart';

class BasicFrame extends StatelessWidget {
  Widget _content;

  BasicFrame(this._content);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gestión Eventos',
      home: _content,
      initialRoute: HomePage.routeName,
      routes: Routes.obtenerRutas(),
      theme: new ThemeData(
        primarySwatch: Colors.orange,
        brightness: Brightness.light,
      ),
    );
  }
}