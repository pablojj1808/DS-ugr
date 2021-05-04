import 'package:flutter/material.dart';
import 'package:gest_event2/pages/builderPages.dart';
import 'package:gest_event2/pages/gatosPage.dart';
import 'package:gest_event2/pages/historialPage.dart';
import 'package:gest_event2/pages/homePage.dart';
import 'package:gest_event2/pages/ubicacionPage.dart';

/// Centralización de las rutas de la app.
class Routes {
  static const String home      = HomePage.routeName;
  static const String historial = HistorialPage.routeName;
  static const String gastos    = GastosPage.routeName;
  static const String ubicacion = UbicacionPage.routeName;

  static Director _d = new Director();

  static Map<String, WidgetBuilder> obtenerRutas() {
    return {
      home      : (context) => _d.constructPage(new PageHomeBuilder()),
      gastos    : (context) => _d.constructPage(new PageGastosBuilder()),
      historial : (context) => _d.constructPage(new PageHistoryBuilder()),
      ubicacion : (context) => _d.constructPage(new PageUbicacionBuilder()),
    };
  }
}