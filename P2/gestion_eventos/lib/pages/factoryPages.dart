
import 'package:flutter/material.dart';
import 'package:gestion_eventos/pages/basicFrame.dart';
import 'package:gestion_eventos/pages/homePage.dart';
import 'package:gestion_eventos/widgets/HomePageWidget.dart';
import 'package:gestion_eventos/widgets/menuLateral.dart';

abstract class FactoryPages {

  Widget menuLateral = new MenuLateral();

  Widget factoryMethod();
}


class PageHomeFactory extends FactoryPages {
  @override
  Widget factoryMethod() {
    return new BasicFrame(
      new HomePage(menuLateral, new HomePageWidget())
    );
  }
}