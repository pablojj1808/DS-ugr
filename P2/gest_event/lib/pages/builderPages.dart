
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gest_event/pages/basicFrame.dart';
import 'package:gest_event/pages/gatosPage.dart';
import 'package:gest_event/pages/historialPage.dart';
import 'package:gest_event/pages/homePage.dart';
import 'package:gest_event/pages/ubicacionPage.dart';
import 'package:gest_event/widgets/gastosWidget.dart';
import 'package:gest_event/widgets/historialWidget.dart';
import 'package:gest_event/widgets/homePageWidget.dart';
import 'package:gest_event/widgets/menuLateral.dart';
import 'package:gest_event/widgets/menuLateral.dart';

abstract class Builder {
  Widget body, frame, built;
  // Para evitar su creación en cada llamada
  static Widget menuLateral = new MenuLateral();
  void crearBody();
  void crearFrame();
  Widget getBuilt();
}

class PageHomeBuilder implements Builder {
  @override
  Widget menuLateral, frame, built, body;

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
  Widget menuLateral, frame, built, body;

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
  Widget body, built, frame;

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

class PageUbicacionBuilder implements Builder {
  @override
  Widget body, built, frame;

  @override
  void crearBody() {
    body = new UbicacionPage(Builder.menuLateral);
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