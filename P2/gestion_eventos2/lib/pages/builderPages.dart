
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gestion_eventos/models/models.dart';
import 'package:gestion_eventos/pages/basicFrame.dart';
import 'package:gestion_eventos/pages/gatosPage.dart';
import 'package:gestion_eventos/pages/historialPage.dart';
import 'package:gestion_eventos/pages/homePage.dart';
import 'package:gestion_eventos/widgets/dropdownMenu.dart';
import 'package:gestion_eventos/widgets/gastosWidget.dart';
import 'package:gestion_eventos/widgets/historialWidget.dart';
import 'package:gestion_eventos/widgets/homePageWidget.dart';
import 'package:gestion_eventos/widgets/menuLateral.dart';

abstract class Builder {
  late Widget body, frame, built;
  // Para evitar su creación en cada llamada
  static Widget menuLateral = new MenuLateral();
  void crearBody();
  void crearFrame();
  Widget getBuilt();
}

class PageHomeBuilder implements Builder {
  @override
  late Widget menuLateral, frame, built, body;

  @override
  void crearBody() {
    body = new HomePage(Builder.menuLateral, new HomePageWidget());
  }

  @override
  void crearFrame() {
    frame = new BasicFrame(
        body
    );
  }

  @override
  Widget getBuilt() {
    return frame;
  }

}

class PageGastosBuilder implements Builder {
  @override
  late Widget menuLateral, frame, built, body;

  @override
  void crearBody() {
    body = new GastosPage(Builder.menuLateral, new GastosWidget());
  }

  @override
  void crearFrame() {
    frame = new BasicFrame(
        body
    );
  }

  @override
  Widget getBuilt() {
    return frame;
  }

}

class PageHistoryBuilder implements Builder {
  @override
  late Widget body, built, frame;

  @override
  void crearBody() {
    body = new HistorialPage(Builder.menuLateral, new HistorialWidget());
  }

  @override
  void crearFrame() {
    frame = new BasicFrame(
        body
    );
  }

  @override
  Widget getBuilt() {
    return frame;
  }

}

class Director {
    Widget constructPage(Builder b)  {
    b.crearBody();
    b.crearFrame();
    return b.frame;
  }

}