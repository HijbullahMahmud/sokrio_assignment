import 'package:dio/dio.dart';
import 'package:sokrio_assignment/src/core/base/base.dart';
import 'package:sokrio_assignment/src/data/datasources/user_list_datasource.dart';
import 'package:sokrio_assignment/src/data/mapper/user_list_mapper.dart';
import 'package:sokrio_assignment/src/domain/entities/user_list.dart';
import 'package:sokrio_assignment/src/domain/repositories/user_list_repository.dart';

final class UserListRepositoryImpl extends UserListRepository {
  final UserListDatasource datasource;

  UserListRepositoryImpl({required this.datasource});

  @override
  Future<Result<UserList, Failure>> userList({required String endPoint, CancelToken? cancelToken}) async {
    return asyncGuard(() async {
      var response = await datasource.userList(endPoint: endPoint, cancelToken: cancelToken);
      final model = UserMapper.toDomain(response);
      return model;
    });
  }
}
