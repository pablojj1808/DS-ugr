import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/';
  Widget _menuLateral, _content;

  HomePage(this._menuLateral, this._content);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Inicio')),
      body: _content,
      drawer: _menuLateral,
    );
  }
}


