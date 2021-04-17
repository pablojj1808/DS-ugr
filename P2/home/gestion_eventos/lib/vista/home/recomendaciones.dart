import 'package:flutter/material.dart';

import 'package:gestion_eventos/vista/home/event_list_widget.dart';
import 'package:gestion_eventos/modelo/modelo.dart';

class Recomendaciones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 250),
      padding: EdgeInsets.only(left: 2.0, right: 2.0, top: 10.0, bottom: 0.0),
      margin: EdgeInsets.only(left: 0.0, right: 0.0, top: 20.0, bottom: 20.0),
      decoration: BoxDecoration(
        color: Colors.white, 
        ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            'RECOMENDACIONES',
            style: TextStyle(color: Colors.black.withOpacity(1.0), fontSize: 20, fontWeight: FontWeight.bold),
          ),
          EventListWidget( eventList: recomendaciones),
        ],
      ),
    );
  }
}
