
import 'package:flutter/material.dart';
import 'package:gestion_eventos/models/models.dart';
import 'package:gestion_eventos/routes/routes.dart';

class HistorialWidget extends StatefulWidget {

  @override
  _HistorialWidget createState() => _HistorialWidget(new EventosSet().eventos);
}

class _HistorialWidget extends State<HistorialWidget> {

  List<Evento> _eventosAsistidos;

  _HistorialWidget(this._eventosAsistidos);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: new ListView(
          children: _eventosAsistidos.map(_buildItem).toList(),
        )
    );
  }

  Widget _buildItem(Evento e) {
    return ListTile(
      title: new Text(e.name),
      subtitle: new Text('${e.ubi}       ${e.ubi} personas'),
      leading: new Icon(Icons.event_available_rounded),
      onTap: () {
        Navigator.pushReplacementNamed(context, Routes.evento);
      },
    );
  }
}
