import 'package:flutter/material.dart';
import 'package:gest_event/pages/builderPages.dart';

void main() {
  var d = Director();

  runApp(d.constructPage(new PageHomeBuilder()));
}
