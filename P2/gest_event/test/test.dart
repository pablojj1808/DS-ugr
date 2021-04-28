// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
//import 'package:test/test.dart';
import 'package:gest_event/models/evento.dart';
import 'package:gest_event/models/eventoSet.dart';
import 'package:gest_event/pages/builderPages.dart';

void main() {
  setUpAll(() {
    TestWidgetsFlutterBinding.ensureInitialized();
  });
  testsModelos();
}

testsModelos() {

  group('PRUEBA DE MODELOS', () {

    test('constructor evento', () {
      final e = new Evento('', '', 0, 0, new DateTime.now(),'');

      expect(e.numEntradasVendidas, 0);
    });

    test('cambio filtro EventSet', () async {
      var set = new EventosSet();
      await set.cargarDatos();
      set.filtroActual = 2;
      expect(set.filtroActual, 'PRECIO');
    });

    test('cantidad en el EventSet', () async {
      var set = new EventosSet();
      await set.cargarDatos();
      expect(set.tam, 15);
    });

    test('EventoSet ordenado por precio', () async {
      var set = new EventosSet();
      await set.cargarDatos();
      set.ordenar('PRECIO');
      expect(ordenAscendente(set.eventos), true);
    });

    test('EventoSet ordenado por público', () async {
      var set = new EventosSet();
      await set.cargarDatos();
      set.ordenar('TAMAÑO');
      expect(ordenAscendentePublico(set.eventos), true);
    });

    test('EventoSet ordenado por fecha', () async {
      var set = new EventosSet();
      await set.cargarDatos();
      set.ordenar('FECHA');
      expect(ordenAscendenteFecha(set.eventos), true);
    });

  });
}

testsWidgets() {
  group('PRUEBA DE WIDGETS', () {
    testWidgets('abriendo Menú lateral', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      var d = Director();
      await tester.pumpWidget(d.constructPage(new PageHomeBuilder()));

      // Verify that our counter starts at 0.
      expect(find.text('0'), findsOneWidget);
      expect(find.text('1'), findsNothing);

      // Tap the '+' icon and trigger a frame.
      await tester.tap(find.byIcon(Icons.add));
      await tester.pump();

      // Verify that our counter has incremented.
      expect(find.text('0'), findsNothing);
      expect(find.text('1'), findsOneWidget);
    });
  });
}


/// Helpers functions for testing...
bool ordenAscendente(List<Evento> v) {
  bool salida = true;
  for(int i=0; i<v.length - 1 && salida; i++) {
    if(v[i].precio > v[i + 1].precio) salida = false;
  }
  return salida;
}

bool ordenAscendentePublico(List<Evento> v) {
  bool salida = true;
  for(int i=0; i<v.length - 1 && salida; i++) {
    if(v[i].publico > v[i + 1].publico) salida = false;
  }
  return salida;
}

bool ordenAscendenteFecha(List<Evento> v) {
  bool salida = true;
  for(int i=0; i<v.length - 1 && salida; i++) {
    if(v[i].fecha.difference(v[i + 1].fecha) > new Duration()) salida = false;
  }
  return salida;
}