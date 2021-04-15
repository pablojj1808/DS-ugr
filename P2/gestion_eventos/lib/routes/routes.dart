import 'package:flutter/material.dart';
import 'package:gestion_eventos/pages/builderPages.dart';
import 'package:gestion_eventos/pages/gatosPage.dart';
import 'package:gestion_eventos/pages/homePage.dart';

/// Centralización de las rutas de la app.
class Routes {
  static const String home      = HomePage.routeName;
  static const String historial = "/historial";
  static const String gastos    = GastosPage.routeName;
  static const String ubicacion = "/ubicacion";

  static Director _d = new Director();

  static Map<String, WidgetBuilder> obtenerRutas() {
    return {
      home  : (context) => _d.constructPage(new PageHomeBuilder()),
      gastos: (context) => _d.constructPage(new PageGastosBuilder()),
      
    };
  }
}