import 'dart:math';

class Aleatorio {
  Random _rdn = Random();

  double aleatorio(int min, int max) {
    return (_rdn.nextDouble() % (max - min + 1)) + min;
  }
}
