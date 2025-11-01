// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dependency_injection.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(sharedPreferences)
const sharedPreferencesProvider = SharedPreferencesProvider._();

final class SharedPreferencesProvider
    extends
        $FunctionalProvider<
          AsyncValue<SharedPreferences>,
          SharedPreferences,
          FutureOr<SharedPreferences>
        >
    with
        $FutureModifier<SharedPreferences>,
        $FutureProvider<SharedPreferences> {
  const SharedPreferencesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sharedPreferencesProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sharedPreferencesHash();

  @$internal
  @override
  $FutureProviderElement<SharedPreferences> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<SharedPreferences> create(Ref ref) {
    return sharedPreferences(ref);
  }
}

String _$sharedPreferencesHash() => r'ad13470fe866595ad0f58a3e26f11048d94ef22e';

@ProviderFor(dio)
const dioProvider = DioProvider._();

final class DioProvider extends $FunctionalProvider<Dio, Dio, Dio>
    with $Provider<Dio> {
  const DioProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dioProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dioHash();

  @$internal
  @override
  $ProviderElement<Dio> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Dio create(Ref ref) {
    return dio(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Dio value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Dio>(value),
    );
  }
}

String _$dioHash() => r'762cb6e6d6c1d3f9de417928a2c76d1b8e6bfe18';

@ProviderFor(cacheService)
const cacheServiceProvider = CacheServiceProvider._();

final class CacheServiceProvider
    extends $FunctionalProvider<CacheService, CacheService, CacheService>
    with $Provider<CacheService> {
  const CacheServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cacheServiceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cacheServiceHash();

  @$internal
  @override
  $ProviderElement<CacheService> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  CacheService create(Ref ref) {
    return cacheService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CacheService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CacheService>(value),
    );
  }
}

String _$cacheServiceHash() => r'21a7ce6ef1eab778d1b25d2ff1b8fcc3ca26aac5';

@ProviderFor(restClientService)
const restClientServiceProvider = RestClientServiceProvider._();

final class RestClientServiceProvider
    extends $FunctionalProvider<RestClient, RestClient, RestClient>
    with $Provider<RestClient> {
  const RestClientServiceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'restClientServiceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$restClientServiceHash();

  @$internal
  @override
  $ProviderElement<RestClient> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  RestClient create(Ref ref) {
    return restClientService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RestClient value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RestClient>(value),
    );
  }
}

String _$restClientServiceHash() => r'87fbf3f2320c6d4a7dd07f6f9056c6d8f8d90f1f';

@ProviderFor(authenticationRepository)
const authenticationRepositoryProvider = AuthenticationRepositoryProvider._();

final class AuthenticationRepositoryProvider
    extends
        $FunctionalProvider<
          AuthenticationRepository,
          AuthenticationRepository,
          AuthenticationRepository
        >
    with $Provider<AuthenticationRepository> {
  const AuthenticationRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'authenticationRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$authenticationRepositoryHash();

  @$internal
  @override
  $ProviderElement<AuthenticationRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  AuthenticationRepository create(Ref ref) {
    return authenticationRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AuthenticationRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AuthenticationRepository>(value),
    );
  }
}

String _$authenticationRepositoryHash() =>
    r'480a2a55d06482768b6470a2aa26a9444e5f8659';

@ProviderFor(localeRepository)
const localeRepositoryProvider = LocaleRepositoryProvider._();

final class LocaleRepositoryProvider
    extends
        $FunctionalProvider<
          LocaleRepository,
          LocaleRepository,
          LocaleRepository
        >
    with $Provider<LocaleRepository> {
  const LocaleRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'localeRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$localeRepositoryHash();

  @$internal
  @override
  $ProviderElement<LocaleRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  LocaleRepository create(Ref ref) {
    return localeRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LocaleRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LocaleRepository>(value),
    );
  }
}

String _$localeRepositoryHash() => r'dce98c6324324135160c7e3216c1527dbb923f88';

@ProviderFor(getCurrentLocaleUseCase)
const getCurrentLocaleUseCaseProvider = GetCurrentLocaleUseCaseProvider._();

final class GetCurrentLocaleUseCaseProvider
    extends
        $FunctionalProvider<
          GetCurrentLocaleUseCase,
          GetCurrentLocaleUseCase,
          GetCurrentLocaleUseCase
        >
    with $Provider<GetCurrentLocaleUseCase> {
  const GetCurrentLocaleUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getCurrentLocaleUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getCurrentLocaleUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetCurrentLocaleUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetCurrentLocaleUseCase create(Ref ref) {
    return getCurrentLocaleUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetCurrentLocaleUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetCurrentLocaleUseCase>(value),
    );
  }
}

String _$getCurrentLocaleUseCaseHash() =>
    r'0934d94db826e0316dfcdf37515ea53ed385ac39';

@ProviderFor(setCurrentLocaleUseCase)
const setCurrentLocaleUseCaseProvider = SetCurrentLocaleUseCaseProvider._();

final class SetCurrentLocaleUseCaseProvider
    extends
        $FunctionalProvider<
          SetCurrentLocaleUseCase,
          SetCurrentLocaleUseCase,
          SetCurrentLocaleUseCase
        >
    with $Provider<SetCurrentLocaleUseCase> {
  const SetCurrentLocaleUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'setCurrentLocaleUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$setCurrentLocaleUseCaseHash();

  @$internal
  @override
  $ProviderElement<SetCurrentLocaleUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SetCurrentLocaleUseCase create(Ref ref) {
    return setCurrentLocaleUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SetCurrentLocaleUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SetCurrentLocaleUseCase>(value),
    );
  }
}

String _$setCurrentLocaleUseCaseHash() =>
    r'eef8975e559b80a2d395c006d0edc49378928b38';

@ProviderFor(resetRepositoryUseCase)
const resetRepositoryUseCaseProvider = ResetRepositoryUseCaseProvider._();

final class ResetRepositoryUseCaseProvider
    extends
        $FunctionalProvider<
          ResetRepositoryUseCase,
          ResetRepositoryUseCase,
          ResetRepositoryUseCase
        >
    with $Provider<ResetRepositoryUseCase> {
  const ResetRepositoryUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'resetRepositoryUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$resetRepositoryUseCaseHash();

  @$internal
  @override
  $ProviderElement<ResetRepositoryUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ResetRepositoryUseCase create(Ref ref) {
    return resetRepositoryUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ResetRepositoryUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ResetRepositoryUseCase>(value),
    );
  }
}

String _$resetRepositoryUseCaseHash() =>
    r'272d74f8e5d5dea3aaa93eee0393143f03b17eb6';
