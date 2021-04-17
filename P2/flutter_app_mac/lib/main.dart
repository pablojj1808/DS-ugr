import 'package:flutter/material.dart';
import 'package:flutter_app_mac/models/eventoSet.dart';
import 'pages/builderPages.dart';


void main() {
  var d = Director();

  runApp(d.constructPage(new PageHomeBuilder()));

}
