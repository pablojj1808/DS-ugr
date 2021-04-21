import 'package:flutter/material.dart';
import 'package:prueba/pages/builderPages.dart';

void main() {
  var d = Director();

  runApp(d.constructPage(new PageHomeBuilder()));
}
