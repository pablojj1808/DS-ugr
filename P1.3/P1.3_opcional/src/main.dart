import 'Cliente.dart';
import 'DescuentoFilter.dart';
import 'Filter.dart';
import 'FilterManager.dart';
import 'IVAFilter.dart';
import 'RepercutirDemandaFilter.dart';
import 'Target.dart';
import 'dart:io';

void main(List<String> arguments) {
  const double PRECIO_INICIAL = 12;
  FilterManager fm = FilterManager(Target(PRECIO_INICIAL));

  // filtros
  Filter iva = IVAFilter();
  Filter desc = DescuentoFilter();
  Filter dm = RepercutirDemandaFilter();
  fm.addFilter(iva);
  fm.addFilter(desc);
  fm.addFilter(dm);

  Cliente cliente = Cliente();
  cliente.filterManager = fm;

  // Iniciamos el barrido de los filtros
  while (true) {
    cliente.sendRequest();
    sleep(const Duration(seconds: 2));
  }
}
