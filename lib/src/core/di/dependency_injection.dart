import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sokrio_assignment/src/data/datasources/user_list_datasource.dart';
import 'package:sokrio_assignment/src/data/datasources/user_list_datasource_impl.dart';
import 'package:sokrio_assignment/src/data/repositories/user_list_repository_impl.dart';
import 'package:sokrio_assignment/src/data/services/cache/cache_service.dart';
import 'package:sokrio_assignment/src/data/services/network/network_service.dart';
import 'package:sokrio_assignment/src/domain/repositories/user_list_repository.dart';
import 'package:sokrio_assignment/src/domain/use_cases/user_list_usecase.dart';

final injector = GetIt.instance;

Future<void> initDependencies() async {
  // --- SharedPreferences ---
  // final sharedPrefs = await SharedPreferences.getInstance();
  // injector.registerLazySingleton<CacheService>(
  //   () => SharedPreferencesService(sharedPrefs),
  // );

  //---Network service---//
  injector.registerLazySingleton<NetworkService>(() => NetworkService());
}

void initDatasources() {
  injector.registerFactory<UserListDatasource>(
    () =>
        UserListDatasourceImpl(networkService: injector.get<NetworkService>()),
  );
}

void initRepositories() {
  injector.registerFactory<UserListRepository>(
    () =>
        UserListRepositoryImpl(datasource: injector.get<UserListDatasource>()),
  );
}

void initUsecases() {
  injector.registerFactory<UserListUsecase>(
    () => UserListUsecase(repository: injector.get<UserListRepository>()),
  );
}
