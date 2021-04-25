import 'package:flutter/material.dart';
import 'package:gest_event/models/evento.dart';
import 'package:gest_event/widgets/event_widget.dart';

class EventListWidget extends StatelessWidget {
  final List<Evento> eventos;

  EventListWidget(@required this.eventos);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 190),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: eventos.length,
              itemBuilder: (context, index) => EventWidget(
                eventos[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
