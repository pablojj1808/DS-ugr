import 'package:flutter/material.dart';

import 'mejor_valorado.dart';
import 'recomendaciones.dart';
import 'destacados.dart';

class HomeScreen extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home page'),
        ),
        body: ListView(
          //padding: const EdgeInsets.all(8),
          children: <Widget>[
            MejorValorado(),
            Recomendaciones(),
            Destacados(),
          ],
        ));
  }
}
