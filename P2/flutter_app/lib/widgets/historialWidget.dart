import 'package:flutter/material.dart';
import 'package:flutter_app/models/models.dart';
import 'package:flutter_app/routes/routes.dart';
import 'package:flutter_app/widgets/dropdownMenu.dart';

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
  static int _cont = 0;
  _HistorialWidget(this._eventoSet);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _eventoSet.cargarDatos(),
        builder: (context, AsyncSnapshot<List<Evento>> snap) {
          if (snap.hasError) {
            return Center(
              child: Text('ERROR: ${snap.error.toString()}'),
            );
          }
          if (!snap.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return Scaffold(
            body: Center(
              child: Column(children: [
                new DropDownMenu(Filtrado),
                Expanded(
                  child: new ListView(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    padding: EdgeInsets.fromLTRB(3, 5, 3, 5),
                    children: snap.data.map(_buildItem).toList(),
                  ),
                ),
                /**/
              ]),
            ),
          );
        });
  }

  Widget _buildItem(Evento e) {
    _cont++;
    return Container(
      decoration:
          new BoxDecoration(border: Border.all(color: const Color(0xFF4CCBF8))),
      margin: EdgeInsets.fromLTRB(3, 5, 3, 5),
      child: ListTile(
        title: new Text('($_cont) ${e.name}'),
        subtitle: new Text('${e.ubi}  ${e.publico} personas  ${e.precio}€ '),
        leading: new Icon(Icons.event_available_rounded),
        onTap: () {
          Navigator.pushReplacementNamed(context, Routes.evento);
        },
        contentPadding: EdgeInsets.fromLTRB(3, 5, 3, 5),
      ),
    );
  }
}
