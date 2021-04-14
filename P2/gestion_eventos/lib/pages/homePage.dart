import 'package:flutter/material.dart';
import 'package:gestion_eventos/widgets/menuLateral.dart';

class HomePage extends StatelessWidget {
  final String title;

  HomePage({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text('My Page!')),
      drawer: new MenuLateral(),
    );
  }
}
