// Importa la Flutter Driver API
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Counter App', () {
    // Primero, define los Finders. Podemos usarlos para localizar Widgets desde
    // la suite de test. Nota: los Strings proporcionados al método `byValueKey`
    // deben ser los mismos que los Strings utilizados para las Keys del paso 1.
    final recomendaciones = find.text('RECOMENDACIONES');
    //final buttonFinder = find.byValueKey('increment');

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

    test('starts at 0', () async {
      // Usa el método `driver.getText` para verificar que el contador comience en 0.
      expect(await driver.getText(recomendaciones), "RECOMENDACIONES");
    });
  });
}
