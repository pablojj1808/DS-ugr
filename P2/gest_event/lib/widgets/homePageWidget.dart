import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gest_event/widgets/recomendaciones.dart';

import 'package:gest_event/widgets/destacados.dart';
import 'package:gest_event/widgets/mejor_valorado.dart';

class HomePageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
