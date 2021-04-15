
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gestion_eventos/pages/basicFrame.dart';
import 'package:gestion_eventos/pages/gatosPage.dart';
import 'package:gestion_eventos/pages/homePage.dart';
import 'package:gestion_eventos/widgets/gastosWidget.dart';
import 'package:gestion_eventos/widgets/homePageWidget.dart';
import 'package:gestion_eventos/widgets/menuLateral.dart';

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

class Director {
  Widget constructPage(Builder b)  {
    b.crearBody();
    b.crearFrame();
    return b.frame;
  }

}