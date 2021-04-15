import 'package:flutter/material.dart';
import 'widgets/gastosWidget.dart';
import 'pages/factoryPages.dart';


void main() {
  var d = Director();

  runApp(d.constructPage(new PageHomeBuilder()));

}
