import 'package:dio/dio.dart';
import 'package:sokrio_assignment/src/core/base/base.dart';
import 'package:sokrio_assignment/src/domain/entities/user_list.dart';
import 'package:sokrio_assignment/src/domain/repositories/user_list_repository.dart';

final class UserListUsecase {
  final UserListRepository repository;

  UserListUsecase({required this.repository});

  Future<Result<UserList, String>> userList({
    required String endPoint,
    CancelToken? cancelToken,
  }) async {
    final result = await repository.userList(
      endPoint: endPoint,
      cancelToken: cancelToken,
    );
    return switch (result) {
      Success(:final data) => Success(data),
      Error(:final error) => Error(error.message),
      _ => const Error("Something went wrong"),
    };
  }
}
