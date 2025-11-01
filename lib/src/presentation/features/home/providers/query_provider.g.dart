// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(QueryChangeNotifier)
const queryChangeProvider = QueryChangeNotifierProvider._();

final class QueryChangeNotifierProvider
    extends $NotifierProvider<QueryChangeNotifier, String> {
  const QueryChangeNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'queryChangeProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$queryChangeNotifierHash();

  @$internal
  @override
  QueryChangeNotifier create() => QueryChangeNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$queryChangeNotifierHash() =>
    r'e86df5a99b156d157083fd2de691425a967c7217';

abstract class _$QueryChangeNotifier extends $Notifier<String> {
  String build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<String, String>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String, String>,
              String,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
