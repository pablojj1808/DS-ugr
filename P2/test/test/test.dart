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
  testsUnitarios();
  testsWidgets();
}

testsUnitarios() {

  group('PRUEBA DE MODELOS', () {

    test('constructor de evento', () {
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
  group('PRUEBAS DE WIDGETS', () {

    testWidgets('Abrir dropBotton - Cambio filtro', (WidgetTester tester) async {
      var d = Director();
      await tester.pumpWidget(d.constructPage(new PageHistoryBuilder()));
      await tester.pump(new Duration(seconds: 2));


      expect(find.text('por defecto'), findsOneWidget);
      await tester.tap(find.byIcon(Icons.arrow_downward));
      await tester.pump();

      expect(find.text('FECHA'), findsWidgets);
    });

    /*
    testWidgets('abrir Menú lateral', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      var d = Director();
      await tester.pumpWidget(d.constructPage(new PageHomeBuilder()));

      expect(find.text('RECOMENDACIONES'), findsOneWidget);
      expect(find.byIcon(Icons.home), findsNothing);
      expect(find.byIcon(Icons.menu), findsOneWidget);

      await tester.tap(find.byIcon(Icons.menu));
      //await tester.drag(find.byType(ListView), Offset(-500.0, 0.0));
      await tester.pumpAndSettle();

      //expect(find.text('Inicio'), findsNothing);
      expect(find.byIcon(Icons.home), findsOneWidget);
    });*/

    testWidgets('Página del historial', (WidgetTester tester) async {
      var d = Director();
      await tester.pumpWidget(d.constructPage(new PageHistoryBuilder()));
      expect(find.text('Historial de eventos'), findsOneWidget);
    });



    testWidgets('En construccion', (WidgetTester tester) async {
      var d = Director();
      await tester.pumpWidget(d.constructPage(new PageUbicacionBuilder()));

      expect(find.text('Vale'), findsOneWidget);
      expect(find.text('Esta página no está aún disponible...'), findsOneWidget);
      expect(find.text('RECOMENDACIONES'), findsNothing);


      await tester.tap(find.byType(TextButton));
      await tester.pumpAndSettle();

      expect(find.text('Vale'), findsNothing);
      expect(find.text('Esta página no está aún disponible...'), findsNothing);
      expect(find.text('RECOMENDACIONES'), findsOneWidget);
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