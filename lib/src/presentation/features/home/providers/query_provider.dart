import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'query_provider.g.dart';

@riverpod
class SearchQuery extends _$SearchQuery {
  Timer? _debounceTimer;

  @override
  String build() {
    ref.onDispose(() {
      _debounceTimer?.cancel();
    });
    return '';
  }

  void setQuery(String query) {
    _debounceTimer?.cancel();
    _debounceTimer = Timer(const Duration(milliseconds: 500), () {
      state = query;
    });
  }

  void clearQuery() {
    _debounceTimer?.cancel();
    state = '';
  }
}