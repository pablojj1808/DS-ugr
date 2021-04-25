import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gest_event/models/modelo.dart';

import 'event_widget.dart';

class MejorValorado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var ev = mejorValorado;

    int entradas = ev.publico - ev.numEntradasVendidas;

    return Container(
      constraints: BoxConstraints(maxHeight: 300),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20), bottomRight: Radius.circular(20)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'TRENDS ',
                  style: TextStyle(
                    color: Colors.black.withOpacity(1.0),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5,
                  ),
                ),
                WidgetSpan(
                  child: Image(
                    image: AssetImage('assets/img/trends.png'),
                    height: 30,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  EventWidget(mejorValorado),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.star, color: Colors.yellow),
                      Icon(Icons.star, color: Colors.yellow),
                      Icon(Icons.star, color: Colors.yellow),
                      Icon(Icons.star, color: Colors.yellow),
                      Icon(Icons.star, color: Colors.black),
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '  Entradas\nDisponibles',
                    style: TextStyle(
                        color: Colors.black.withOpacity(1.0),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    constraints: BoxConstraints(
                      minHeight: 60,
                      minWidth: 60,
                    ),
                    margin: EdgeInsets.only(top: 5.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Text(
                          entradas.toString(),
                          style: TextStyle(
                              color: Colors.black.withOpacity(1.0),
                              fontSize: 20,
                              fontWeight: FontWeight.normal),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
