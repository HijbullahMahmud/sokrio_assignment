import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'query_provider.g.dart';

@riverpod
class QueryChangeNotifier extends _$QueryChangeNotifier {
  Timer? _debounceTimer;

  @override
  String build() {
    ref.onDispose(() {
      _debounceTimer?.cancel();
    });
    return '';
  }

  void setQuery(String query) {
    // Cancel the timer if it is active
    if (_debounceTimer != null) {
      _debounceTimer!.cancel();
    }
    _debounceTimer = Timer(Duration.zero, () {
      // only update the state once the query has been debounced
      state = query;
    });
  }

  void clearQuery() {
    _debounceTimer?.cancel();
    state = '';
  }
}
