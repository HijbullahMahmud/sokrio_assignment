// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Login)
const loginProvider = LoginProvider._();

final class LoginProvider
    extends $NotifierProvider<Login, LoginState<dynamic>> {
  const LoginProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loginProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loginHash();

  @$internal
  @override
  Login create() => Login();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LoginState<dynamic> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LoginState<dynamic>>(value),
    );
  }
}

String _$loginHash() => r'fd2b16ec7195b71b08b139441f773e43392cf8f2';

abstract class _$Login extends $Notifier<LoginState<dynamic>> {
  LoginState<dynamic> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<LoginState<dynamic>, LoginState<dynamic>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<LoginState<dynamic>, LoginState<dynamic>>,
              LoginState<dynamic>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
