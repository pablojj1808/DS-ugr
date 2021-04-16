import 'package:flutter/material.dart';
import 'package:gestion_eventos/pages/builderPages.dart';
import 'package:gestion_eventos/pages/gatosPage.dart';
import 'package:gestion_eventos/pages/historialPage.dart';
import 'package:gestion_eventos/pages/homePage.dart';

/// Centralización de las rutas de la app.
class Routes {
  static const String home      = HomePage.routeName;
  static const String historial = HistorialPage.routeName;
  static const String gastos    = GastosPage.routeName;
  static const String ubicacion = "/ubicacion";
  static const String evento = "/evento";

  static Director _d = new Director();

  static Map<String, WidgetBuilder> obtenerRutas() {
    return {
      home      : (context) => _d.constructPage(new PageHomeBuilder()),
      gastos    : (context) => _d.constructPage(new PageGastosBuilder()),
      historial : (context) => _d.constructPage(new PageHistoryBuilder()),
    };
  }
}