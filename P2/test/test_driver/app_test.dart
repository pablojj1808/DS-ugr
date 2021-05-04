// Importa la Flutter Driver API
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('TEST DE INTEGRACIÓN', () {

    final recomendaciones = find.text('RECOMENDACIONES');
    final menuFinder = find.byType("IconButton");
    final textMenu = 'Ana Orion';

    FlutterDriver driver;

    // Conéctate al driver de Flutter antes de ejecutar cualquier test
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    // Cierra la conexión con el driver después de que se hayan completado los tests
    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });

    test('carga inicio', () async {
      expect(await driver.getText(recomendaciones), "RECOMENDACIONES");
    });

    test('moverse por pagina Inicio', () async {
      final finderInicial = find.text("Torneo Tenis");
      final finderFinal = find.text("El Rey Leon");
      final finderMitad1 = find.text("Vetusta Morla");
      final finderMitad2 = find.text("The Weeknd");

      //BAJAR (scroll negativo en eje y)
      await driver.scrollUntilVisible(finderInicial, finderMitad2, dyScroll: -300.0,);

      // Verifica que el elemento contenga el texto correcto
      expect(await driver.getText(finderMitad2), 'The Weeknd');
   
      //DESPLAZAR POPULARES (scroll negativo en eje x)
      await driver.scrollUntilVisible(finderMitad2, finderMitad1,dxScroll: -500.0,);

      // Verifica que el elemento contenga el texto correcto
      expect(await driver.getText(finderMitad1), 'Vetusta Morla');

      //DESPLAZAR DESTACADOS (scroll positivo en eje x)
      await driver.scrollUntilVisible(finderMitad1, finderMitad2,dxScroll: 500.0,);

      // Verifica que el elemento contenga el texto correcto
      expect(await driver.getText(finderMitad2), 'The Weeknd');

      //SUBIR (scroll positivo en eje y)
      await driver.scrollUntilVisible(finderMitad2,finderFinal,dyScroll: 400.0,);

      // Verifica que el elemento contenga el texto correcto
      expect(await driver.getText(finderFinal), 'El Rey Leon');

    });

    test('pagina historial', () async {
      
      final historialFinder = find.text("Historial");
      final textHistorial = 'Historial de eventos';

      //Pulsar el boton de menu para que se abra el menu lateral
      await driver.tap(menuFinder);

      // Verifica que el elemento contenga el texto correcto
      expect(await driver.getText(find.text('Ana Orion')), textMenu);

      //Pulsar el boton de menu para que se abra la pantalla de historial
      await driver.tap(historialFinder);

      // Verifica que el elemento contenga el texto correcto
      expect(await driver.getText(find.text('Historial de eventos')), textHistorial);

      //Cambiar filtro
      //Buscar el boton de filtro
      final filtrosFinder = find.byValueKey("dropdownbutton");

      //Pulsar el boton de menu para que se abra el menu lateral
      await driver.tap(filtrosFinder);

      // Pulsar el filtro de precio
      await driver.tap(find.text('PRECIO'));
    });

    test('pagina en construccion', () async {
      final textConstruccion = 'Vale';
      final textInicio = 'RECOMENDACIONES';

      //Pulsar el boton de menu para que se abra el menu lateral
      await driver.tap(menuFinder);

      // Verifica que el elemento contenga el texto correcto
      expect(await driver.getText(find.text('Ana Orion')), textMenu);

      //Pulsar el boton de menu para que se abra la pantalla de sitos
      await driver.tap(find.text('Sitios'));

      //Verificar que estamos en la pantalla en construccion
      expect(await driver.getText(find.text("Vale")), textConstruccion);

      //Pulsar el boton para ir a la pantalla home
      await driver.tap(find.byType("TextButton"));

      //Verificar que estamos en la pantalla home
      expect(await driver.getText(find.text('RECOMENDACIONES')), textInicio);
    });
  });
}
