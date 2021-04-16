import 'package:flutter/material.dart';
import 'package:flutter_app_mac/models/evento.dart';
import 'package:flutter_app_mac/models/eventoSet.dart';
import 'package:flutter_app_mac/widgets/dropdownMenu.dart';
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

    return Scaffold(
      body: Center(
        child: Column(children: [
          new DropdownButton<String>(
            value: conjunto.filtroActual,
            items: EventosSet.filtrado.map((String value) {
              new DropdownMenuItem<String>(
                value: value,
                child: new Text(value),
              );
            }).toList(),
            onChanged: (e) {
              Provider.of<EventosSet>(context).ordenar(e);
            },
          ),
          Expanded(
            child: new ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              padding: EdgeInsets.fromLTRB(3, 5, 3, 5),
              children: conjunto.eventos.data.map((e) {
                return Container(
                  decoration: new BoxDecoration(
                      border: Border.all(color: const Color(0xFF4CCBF8))),
                  margin: EdgeInsets.fromLTRB(3, 5, 3, 5),
                  child: ListTile(
                    title: new Text('${e.id}) ${e.name}'),
                    subtitle: new Text(
                        '${e.ubi}  ${e.publico} personas  ${e.precio}€ '),
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
  }
}
