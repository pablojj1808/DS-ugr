import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gest_event2/routes/routes.dart';

/// Clase sin estado encargada de crear el menú lateral con los submenus y su
/// redirección.
class MenuLateral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('Se construye el menú lateral');
    return  SingleChildScrollView(
      child: Column(
        children: [Drawer(
          key: new Key('menuLateral'),
          child: ListView(
            key: new Key('menuLateral2'),
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              _createHeader(context),
              Container(
                padding: EdgeInsets.only(bottom: 38.0),
              ),
              _createItem(Icons.home, 'Inicio',
                  () => Navigator.pushReplacementNamed(context, Routes.home)),
              _createItem(Icons.history, 'Historial',
                  () => Navigator.pushReplacementNamed(context, Routes.historial)),
              _createItem(Icons.account_balance_wallet, 'Gastos',
                  () => Navigator.pushReplacementNamed(context, Routes.gastos)),
              _createItem(Icons.where_to_vote, 'Sitios',
                  () => Navigator.pushReplacementNamed(context, Routes.ubicacion)),
              _createItem(Icons.info_outline, 'Sobre nosotros', () {
                showDialog(
                    context: context,
                    builder: (c) => AlertDialog(
                          title: Text('¿Quiénes somos?'),
                          content: Text(
                              'Práctica 2 de la asignatura Desarrollo de software realizada por: '
                              'Raquel Molina R y Pablo Jiménez J'),
                        ));
              }),
            ],
          ),
        ),
      ]),
    );
  }

  Widget _createHeader(BuildContext context) {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage('assets/img/header.png'))),
        child: Stack(children: <Widget>[
          Positioned(
              bottom: 12.0,
              left: 16.0,
              child: Text("Ana Orion",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w500))),
        ]));
  }

  _createItem(IconData icon, String text, GestureTapCallback onTap) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text, style: TextStyle(fontSize: 25)),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
