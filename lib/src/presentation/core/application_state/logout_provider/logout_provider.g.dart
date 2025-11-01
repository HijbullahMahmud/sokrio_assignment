// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logout_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Logout)
const logoutProvider = LogoutProvider._();

final class LogoutProvider extends $NotifierProvider<Logout, LogoutState> {
  const LogoutProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'logoutProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$logoutHash();

  @$internal
  @override
  Logout create() => Logout();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LogoutState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LogoutState>(value),
    );
  }
}

String _$logoutHash() => r'74f531765dbd2e9936be8d5913fefb06d479b703';

abstract class _$Logout extends $Notifier<LogoutState> {
  LogoutState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<LogoutState, LogoutState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<LogoutState, LogoutState>,
              LogoutState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
