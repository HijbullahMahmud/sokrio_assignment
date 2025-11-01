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

String _$dioHash() => r'75e6dcf9938d9a994c2040548fa547ab9a58c150';

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

@ProviderFor(routerRepository)
const routerRepositoryProvider = RouterRepositoryProvider._();

final class RouterRepositoryProvider
    extends
        $FunctionalProvider<
          RouterRepository,
          RouterRepository,
          RouterRepository
        >
    with $Provider<RouterRepository> {
  const RouterRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'routerRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$routerRepositoryHash();

  @$internal
  @override
  $ProviderElement<RouterRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  RouterRepository create(Ref ref) {
    return routerRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RouterRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RouterRepository>(value),
    );
  }
}

String _$routerRepositoryHash() => r'277e8ef0a2084e2932037d567391fefea47aaaf9';

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

@ProviderFor(loginUseCase)
const loginUseCaseProvider = LoginUseCaseProvider._();

final class LoginUseCaseProvider
    extends $FunctionalProvider<LoginUseCase, LoginUseCase, LoginUseCase>
    with $Provider<LoginUseCase> {
  const LoginUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'loginUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$loginUseCaseHash();

  @$internal
  @override
  $ProviderElement<LoginUseCase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  LoginUseCase create(Ref ref) {
    return loginUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LoginUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LoginUseCase>(value),
    );
  }
}

String _$loginUseCaseHash() => r'b98519882aa37b0342393373924de47321902097';

@ProviderFor(checkRememberMeUseCase)
const checkRememberMeUseCaseProvider = CheckRememberMeUseCaseProvider._();

final class CheckRememberMeUseCaseProvider
    extends
        $FunctionalProvider<
          CheckRememberMeUseCase,
          CheckRememberMeUseCase,
          CheckRememberMeUseCase
        >
    with $Provider<CheckRememberMeUseCase> {
  const CheckRememberMeUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'checkRememberMeUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$checkRememberMeUseCaseHash();

  @$internal
  @override
  $ProviderElement<CheckRememberMeUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CheckRememberMeUseCase create(Ref ref) {
    return checkRememberMeUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CheckRememberMeUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CheckRememberMeUseCase>(value),
    );
  }
}

String _$checkRememberMeUseCaseHash() =>
    r'6ef4926497ddf99900ed33b5509452cb91d0aff9';

@ProviderFor(saveRememberMeUseCase)
const saveRememberMeUseCaseProvider = SaveRememberMeUseCaseProvider._();

final class SaveRememberMeUseCaseProvider
    extends
        $FunctionalProvider<
          SaveRememberMeUseCase,
          SaveRememberMeUseCase,
          SaveRememberMeUseCase
        >
    with $Provider<SaveRememberMeUseCase> {
  const SaveRememberMeUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'saveRememberMeUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$saveRememberMeUseCaseHash();

  @$internal
  @override
  $ProviderElement<SaveRememberMeUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SaveRememberMeUseCase create(Ref ref) {
    return saveRememberMeUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SaveRememberMeUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SaveRememberMeUseCase>(value),
    );
  }
}

String _$saveRememberMeUseCaseHash() =>
    r'b6effc4112efd25bd22a60f6befbfea35ccb9cf8';

@ProviderFor(logoutUseCase)
const logoutUseCaseProvider = LogoutUseCaseProvider._();

final class LogoutUseCaseProvider
    extends $FunctionalProvider<LogoutUseCase, LogoutUseCase, LogoutUseCase>
    with $Provider<LogoutUseCase> {
  const LogoutUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'logoutUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$logoutUseCaseHash();

  @$internal
  @override
  $ProviderElement<LogoutUseCase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  LogoutUseCase create(Ref ref) {
    return logoutUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LogoutUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LogoutUseCase>(value),
    );
  }
}

String _$logoutUseCaseHash() => r'e46d735224033bf72b7b42db70e6bd22a4d070a2';

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

@ProviderFor(getOnboardingStatusUseCase)
const getOnboardingStatusUseCaseProvider =
    GetOnboardingStatusUseCaseProvider._();

final class GetOnboardingStatusUseCaseProvider
    extends
        $FunctionalProvider<
          GetOnboardingStatusUseCase,
          GetOnboardingStatusUseCase,
          GetOnboardingStatusUseCase
        >
    with $Provider<GetOnboardingStatusUseCase> {
  const GetOnboardingStatusUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getOnboardingStatusUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getOnboardingStatusUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetOnboardingStatusUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetOnboardingStatusUseCase create(Ref ref) {
    return getOnboardingStatusUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetOnboardingStatusUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetOnboardingStatusUseCase>(value),
    );
  }
}

String _$getOnboardingStatusUseCaseHash() =>
    r'7edf45b44df226fb1aefda4276f807a799331f54';

@ProviderFor(getUserLoginStatusUseCase)
const getUserLoginStatusUseCaseProvider = GetUserLoginStatusUseCaseProvider._();

final class GetUserLoginStatusUseCaseProvider
    extends
        $FunctionalProvider<
          GetUserLoginStatusUseCase,
          GetUserLoginStatusUseCase,
          GetUserLoginStatusUseCase
        >
    with $Provider<GetUserLoginStatusUseCase> {
  const GetUserLoginStatusUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getUserLoginStatusUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getUserLoginStatusUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetUserLoginStatusUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetUserLoginStatusUseCase create(Ref ref) {
    return getUserLoginStatusUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetUserLoginStatusUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetUserLoginStatusUseCase>(value),
    );
  }
}

String _$getUserLoginStatusUseCaseHash() =>
    r'91a4bb4c1c9791fe7aa17e08cfba6cd238680528';

@ProviderFor(markOnboardingCompletedUseCase)
const markOnboardingCompletedUseCaseProvider =
    MarkOnboardingCompletedUseCaseProvider._();

final class MarkOnboardingCompletedUseCaseProvider
    extends
        $FunctionalProvider<
          MarkOnboardingCompletedUseCase,
          MarkOnboardingCompletedUseCase,
          MarkOnboardingCompletedUseCase
        >
    with $Provider<MarkOnboardingCompletedUseCase> {
  const MarkOnboardingCompletedUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'markOnboardingCompletedUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$markOnboardingCompletedUseCaseHash();

  @$internal
  @override
  $ProviderElement<MarkOnboardingCompletedUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  MarkOnboardingCompletedUseCase create(Ref ref) {
    return markOnboardingCompletedUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(MarkOnboardingCompletedUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<MarkOnboardingCompletedUseCase>(
        value,
      ),
    );
  }
}

String _$markOnboardingCompletedUseCaseHash() =>
    r'994b037254e22146ceeebdabac159a127d431b72';
