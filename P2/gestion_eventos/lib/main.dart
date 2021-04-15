import 'package:flutter/material.dart';
import 'package:gestion_eventos/models/models.dart';
import 'pages/builderPages.dart';


void main() {
  var d = Director();


  runApp(d.constructPage(new PageHomeBuilder()));
}
