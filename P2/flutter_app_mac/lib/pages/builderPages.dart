
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_mac/models/models.dart';
import 'package:flutter_app_mac/pages/basicFrame.dart';
import 'package:flutter_app_mac/pages/gatosPage.dart';
import 'package:flutter_app_mac/pages/historialPage.dart';
import 'package:flutter_app_mac/pages/homePage.dart';
import 'package:flutter_app_mac/widgets/dropdownMenu.dart';
import 'package:flutter_app_mac/widgets/gastosWidget.dart';
import 'package:flutter_app_mac/widgets/historialWidget.dart';
import 'package:flutter_app_mac/widgets/homePageWidget.dart';
import 'package:flutter_app_mac/widgets/menuLateral.dart';

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

class Director {
    Widget constructPage(Builder b)  {
    b.crearBody();
    b.crearFrame();
    return b.frame;
  }

}