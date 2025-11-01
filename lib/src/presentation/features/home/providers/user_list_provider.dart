import 'dart:async';

import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sokrio_assignment/src/core/base/base.dart';
import 'package:sokrio_assignment/src/core/di/dependency_injection.dart';
import 'package:sokrio_assignment/src/domain/entities/user.dart';
import 'package:sokrio_assignment/src/domain/entities/user_list.dart';
import 'package:sokrio_assignment/src/domain/use_cases/user_list_usecase.dart';
import 'package:sokrio_assignment/src/presentation/features/home/providers/query_provider.dart';

part 'user_list_provider.g.dart';

class UserListNotifier {
  final UserListUsecase _usecase = injector.get<UserListUsecase>();

  Future<Result<UserList, String>> getUserList({
    required String endPoint,
    CancelToken? cancelToken,
  }) async {
    return await _usecase.userList(endPoint: endPoint);
  }
}

@riverpod
UserListNotifier userList(Ref ref) => UserListNotifier();

@riverpod
Future<UserList?> getUserList(Ref ref, {required String endPoint}) async {
  final repo = ref.watch(userListProvider);
  final cancelToken = CancelToken();
  final link = ref.keepAlive();

  Timer? timer;
  //When the provider is destroyed, cancel the http request and the timer
  ref.onDispose(() {
    cancelToken.cancel();
    timer?.cancel();
  });

  ref.onCancel(() {
    // start a 30 second timer
    timer = Timer(const Duration(seconds: 30), () {
      // dispose on timeout
      link.close();
    });
  });

  // If the provider is listened again after it was paused, cancel the timer
  ref.onResume(() {
    timer?.cancel();
  });

  final response = await repo.getUserList(
    endPoint: endPoint,
    cancelToken: cancelToken,
  );

  return switch (response) {
    Success() => response.data,
    Error(:final error) => throw error,
    _ => throw Failure(
      type: FailureType.unknown,
      message: "Something went wrong",
    ),
  };
}

@riverpod
Future<UserList?> getFilteredUserList(
  Ref ref, {
  required String endPoint,
}) async {
  final query = ref.watch(queryChangeProvider);
  final userList = await ref.watch(
    getUserListProvider(endPoint: endPoint).future,
  );

  if (userList == null || userList.data == null || userList.data!.isEmpty) {
    return null;
  }

  // If query is empty, return all users
  if (query.trim().isEmpty) {
    return userList;
  }

  final filtered = userList.data?.where((user) {
    final searchLower = query.toLowerCase();
    return user.firstName.toLowerCase().contains(searchLower) ||
        user.lastName.toLowerCase().contains(searchLower) ||
        user.email.toLowerCase().contains(searchLower);
  }).toList();

  return userList.copyWith(data: filtered);
}
