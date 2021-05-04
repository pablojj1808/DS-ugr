import 'package:flutter/material.dart';
import 'package:gest_event2/models/evento.dart';
import 'package:gest_event2/models/eventoSet.dart';
import 'package:provider/provider.dart';

class HistorialWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<EventosSet>(
      create: (_) => EventosSet(),
      child: _PageHistorialWidget(),
    );
  }
}

class _PageHistorialWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final conjunto = Provider.of<EventosSet>(context);

    return FutureBuilder(
        future: conjunto.cargarDatos(),
        builder: (context, AsyncSnapshot<EventosSet> snap) {
          if (snap.hasError) {
            print("${snap.error.toString()}, ${snap.error.runtimeType}");
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
                DropdownButton<String>(
                  key: new Key('dropdownbutton'),
                  value: snap.data.filtroActual,
                  icon: const Icon(Icons.arrow_downward),
                  iconSize: 24,
                  elevation: 16,
                  style: const TextStyle(color: Colors.black),
                  underline: Container(
                    height: 2,
                    color: Colors.blue,
                  ),
                  onChanged: (String newValue) {
                    snap.data.ordenar(newValue);
                  },
                  items: EventosSet.filtrado
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                Expanded(
                  child: new ListView(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    padding: EdgeInsets.fromLTRB(3, 5, 3, 5),
                    children: snap.data.eventos.map<Widget>((e) {
                      return Container(
                        decoration: new BoxDecoration(
                            border: Border.all(color: const Color(0xFF4CCBF8))),
                        margin: EdgeInsets.fromLTRB(3, 5, 3, 5),
                        child: ListTile(
                          title: new Text('${e.id}) ${e.name}       ${e.ubi}'),
                          subtitle: new Text(
                              '${e.publico} personas  ||  ${e.precio}€  ||  ${e.fechaFormat}'),
                          leading: new Icon(Icons.event_available_rounded),
                          contentPadding: EdgeInsets.fromLTRB(3, 5, 3, 5),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ]),
            ),
          );
        });
  }
}
