import 'package:flutter/material.dart';
import 'pages/builderPages.dart';


void main() {
  var d = Director();

  runApp(d.constructPage(new PageHomeBuilder()));

}
