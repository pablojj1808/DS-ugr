import 'package:flutter/material.dart';
import 'package:gestion_eventos/modelo/event_list.dart';
import 'package:gestion_eventos/vista/home/event_widget.dart';

class EventListWidget extends StatelessWidget {
  final EventList eventList;

  EventListWidget({ @required this.eventList });

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
                  itemCount: eventList.length,
                  itemBuilder: (context, index) => EventWidget(
                    evento: eventList.eventos[index],
                  ),
                ),
              ),
            ],
          ),
        );
  }
}
