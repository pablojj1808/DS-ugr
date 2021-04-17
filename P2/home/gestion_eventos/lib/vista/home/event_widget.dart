import 'package:flutter/material.dart';
import 'package:gestion_eventos/modelo/evento.dart';

class EventWidget extends StatelessWidget {
  final Evento evento;

  EventWidget({
    @required this.evento,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        margin: EdgeInsets.all(15),
        elevation: 10,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Column(
            children: <Widget>[
              FadeInImage(
                //colocamos la imagen
                image: AssetImage(evento.img),

                // colocamos el gif o imagen de carga
                placeholder: AssetImage('../../../assets/loading.gif'),

                fadeOutDuration: Duration(milliseconds: 2000),

                // forma de acoplar la imagen en su contenedor
                fit: BoxFit.cover,

                //tamaño de la imagen
                height: 100,
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Text(
                        evento.nombre,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        evento.lugar,
                        style: TextStyle(
                            fontSize: 12, color: Colors.black.withOpacity(1.0)),
                      ),
                    ],
                  ))
            ],
          ),
        ));
  }
}
