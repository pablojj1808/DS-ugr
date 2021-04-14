import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gestion_eventos/routes/routes.dart';

/// Clase sin estado encargada de crear el menú lateral con los submenus y su
/// redirección.
class MenuLateral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          _createHeader(),
          Container(
            padding: EdgeInsets.only(bottom: 38.0),
          ),
          _createItem(Icons.history, 'Historial',
              () => Navigator.pushReplacementNamed(context, Routes.historial)),
          _createItem(Icons.account_balance_wallet, 'Gastos',
              () => Navigator.pushReplacementNamed(context, Routes.gastos)),
          _createItem(Icons.where_to_vote, 'Sitios',
              () => Navigator.pushReplacementNamed(context, Routes.historial)),
        ],
      ),
    );
  }

  Widget _createHeader() {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill, image: AssetImage('img/90.jpg'))),
        child: Stack(children: <Widget>[
          Positioned(
              bottom: 12.0,
              left: 16.0,
              child: Text("Ana Orion",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
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
