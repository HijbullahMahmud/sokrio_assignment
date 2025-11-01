import 'dart:async';

import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sokrio_assignment/src/core/base/base.dart';
import 'package:sokrio_assignment/src/core/di/dependency_injection.dart';
import 'package:sokrio_assignment/src/domain/entities/user_list.dart';
import 'package:sokrio_assignment/src/domain/use_cases/user_list_usecase.dart';

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
