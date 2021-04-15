import 'package:flutter/material.dart';

/// Centralización de las rutas de la app.
class Routes {
  static const String home      = "/";
  static const String historial = "/historial";
  static const String gastos    = "/gastosPage";
  static const String ubicacion = "/ubicacion";

  static Map<String, WidgetBuilder> obtenerRutas() {
    return {
      //gastos: (context) => GastosPage(),
      
    };
  }
}