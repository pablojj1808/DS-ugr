import 'Target.dart';
import 'dart:math';

abstract class Filter {

  Random _rdn;

  Filter(){
    _rdn = Random();
  }

  execute(Target t);

  double aleatorio(int min, int max){
    return ( _rdn.nextDouble() % (max-min+1) ) + min; 
  }

}