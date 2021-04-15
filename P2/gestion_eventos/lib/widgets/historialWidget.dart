
import 'package:flutter/material.dart';
import 'package:gestion_eventos/models/models.dart';
import 'package:gestion_eventos/routes/routes.dart';

class HistorialWidget extends StatefulWidget {

  EventosSet eventos;

  HistorialWidget() {
    eventos = EventosSet();
    print(eventos.eventos);
  }

  @override
  _HistorialWidget createState() => _HistorialWidget(eventos);
}

class _HistorialWidget extends State<HistorialWidget> {

  EventosSet _eventoSet;

  _HistorialWidget(this._eventoSet);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _eventoSet.cargarDatos(),
      builder: (context, AsyncSnapshot<List<Evento>> snap) {
        if(snap.hasError) {
          return Center(child: Text('ERROR: ${snap.error.toString()}'),);
        }
        if(!snap.hasData) {
          return Center(child: CircularProgressIndicator(),);
        }
        return Scaffold(
            body: new ListView(
              children: snap.data.map(_buildItem).toList(),
            )
        );
      }
    );
  }


  Widget _buildItem(Evento e) {
    return ListTile(
      title: new Text(e.name),
      subtitle: new Text('${e.ubi}       ${e.publico} personas'),
      leading: new Icon(Icons.event_available_rounded),
      onTap: () {
        Navigator.pushReplacementNamed(context, Routes.evento);
      },
    );
  }
}
