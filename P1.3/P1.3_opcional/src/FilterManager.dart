import 'Filter.dart';
import 'FilterChain.dart';
import 'Target.dart';

class FilterManager {
  late FilterChain _filterChain;
  Target _target;

  FilterManager(this._target) {
    _filterChain = FilterChain();
  }

  addFilter(Filter f) => _filterChain.addFilter(f);

  filterRequest() {
      _filterChain.execute(_target);
      _target.execute();
  }
}
