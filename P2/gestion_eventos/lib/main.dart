import 'package:flutter/material.dart';
import 'package:gestion_eventos/pages/homePage.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gestión Eventos - Perfil usuario',
      home: new HomePage(title: 'Gestión Eventos - Perfil usuario'),
    );
  }
}


