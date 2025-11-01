import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_ready_to_use_template/src/core/constants/api_endpoints.dart';
import 'package:flutter_ready_to_use_template/src/data/services/network/rest_client.dart';
import 'package:flutter_ready_to_use_template/src/data/services/network/token_manager.dart';
import 'package:flutter_ready_to_use_template/src/presentation/core/router/router.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../data/repositories/authentication_repository_impl.dart';
import '../../data/repositories/locale_repository_impl.dart';
import '../../data/repositories/router_repository_impl.dart';
import '../../data/services/cache/cache_service.dart'; 
import '../../domain/repositories/authentication_repository.dart';
import '../../domain/repositories/locale_repository.dart';
import '../../domain/repositories/router_repository.dart';
import '../../domain/use_cases/authentication_use_case.dart';
import '../../domain/use_cases/locale_use_case.dart';
import '../../domain/use_cases/reset_repository_use_case.dart';
import '../../domain/use_cases/router_use_case.dart';

part 'dependency_injection.g.dart';


//------------Externals---------------//
@Riverpod(keepAlive: true)
Future<SharedPreferences> sharedPreferences(Ref ref) =>
    SharedPreferences.getInstance();


@riverpod
Dio dio(Ref ref) {
  final dio = Dio();

  dio.interceptors.addAll([
    TokenManager(
      baseUrl: ApiEndpoints.base,
      refreshTokenEndpoint: ApiEndpoints.refreshToken,
      cacheService: ref.read(cacheServiceProvider),
      navigatorKey: ref.read(goRouterProvider).routerDelegate.navigatorKey,
      dio: Dio(
        BaseOptions(
          baseUrl: ApiEndpoints.base,
          connectTimeout: const Duration(seconds: 5),
          receiveTimeout: const Duration(seconds: 3),
        ),
      ),
    ),
    if (kDebugMode) PrettyDioLogger(requestHeader: true, requestBody: true),
  ]);

  dio.options.headers['Content-Type'] = 'application/json';

  return dio;
}

// @riverpod
// NetworkService networkService(Ref ref) {
//   final baseUrl = ApiEndpoints.base;
//   return NetworkService(ref: ref, baseUrl: baseUrl);
// }

//---------------services---------------// 
@Riverpod(keepAlive: true)
CacheService cacheService(Ref ref) {
  return SharedPreferencesService(
    ref.read(sharedPreferencesProvider).requireValue,
  );
}


@riverpod
RestClient restClientService(Ref ref) {
  return RestClient(ref.read(dioProvider));
}


 //-------------repository-----------//
@Riverpod(keepAlive: true)
AuthenticationRepository authenticationRepository(Ref ref) {
  return AuthenticationRepositoryImpl(
    remote: ref.read(restClientServiceProvider),
    local: ref.read(cacheServiceProvider),
  );
}

@Riverpod(keepAlive: true)
RouterRepository routerRepository(Ref ref) {
  return RouterRepositoryImpl(cacheService: ref.read(cacheServiceProvider));
}

@Riverpod(keepAlive: true)
LocaleRepository localeRepository(Ref ref) {
  return LocaleRepositoryImpl(ref.read(cacheServiceProvider));
}


 //-------------usecases-----------//


@riverpod
LoginUseCase loginUseCase(Ref ref) {
  return LoginUseCase(ref.read(authenticationRepositoryProvider));
}

@riverpod
CheckRememberMeUseCase checkRememberMeUseCase(Ref ref) {
  return CheckRememberMeUseCase(ref.read(authenticationRepositoryProvider));
}

@riverpod
SaveRememberMeUseCase saveRememberMeUseCase(Ref ref) {
  return SaveRememberMeUseCase(ref.read(authenticationRepositoryProvider));
}

@riverpod
LogoutUseCase logoutUseCase(Ref ref) {
  return LogoutUseCase(ref.read(authenticationRepositoryProvider));
}

@riverpod
GetCurrentLocaleUseCase getCurrentLocaleUseCase(Ref ref) {
  return GetCurrentLocaleUseCase(ref.read(localeRepositoryProvider));
}

@riverpod
SetCurrentLocaleUseCase setCurrentLocaleUseCase(Ref ref) {
  return SetCurrentLocaleUseCase(ref.read(localeRepositoryProvider));
}

@riverpod
ResetRepositoryUseCase resetRepositoryUseCase(Ref ref) {
  return const ResetRepositoryUseCase();
}

@riverpod
GetOnboardingStatusUseCase getOnboardingStatusUseCase(Ref ref) {
  return GetOnboardingStatusUseCase(ref.read(routerRepositoryProvider));
}

@riverpod
GetUserLoginStatusUseCase getUserLoginStatusUseCase(Ref ref) {
  return GetUserLoginStatusUseCase(ref.read(routerRepositoryProvider));
}

@riverpod
MarkOnboardingCompletedUseCase markOnboardingCompletedUseCase(Ref ref) {
  return MarkOnboardingCompletedUseCase(ref.read(routerRepositoryProvider));
}
