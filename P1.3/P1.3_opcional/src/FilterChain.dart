import 'Filter.dart';
import 'Target.dart';

class FilterChain {
  late List<Filter> _filters;

  FilterChain() {
    _filters = [];
  }

  addFilter(Filter f) => _filters.add(f);

  execute(Target t) {
    _filters.forEach((element) {
      element.execute(t);
    });
  }
}
