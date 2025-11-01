import 'package:dio/dio.dart';
import 'package:sokrio_assignment/src/core/base/base.dart';
import 'package:sokrio_assignment/src/domain/entities/user_list.dart';

abstract base class UserListRepository extends Repository {
  Future<Result<UserList, Failure>> userList({
    required String endPoint,
    CancelToken? cancelToken,
  });
}
