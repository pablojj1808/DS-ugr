// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_app_mac/models/eventoSet.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_app_mac/main.dart';

void main() {
  testWidgets('Conjunto de datos correcto', (_)  {
    EventosSet set = EventosSet();
    expect(set.tam(), 21);
  });

  testWidgets('Evento primero correcto', (_)  {
    EventosSet set = EventosSet();

    expect(set.eventos(), null);
  });

}
