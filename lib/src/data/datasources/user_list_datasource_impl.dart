import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:sokrio_assignment/src/core/base/failure.dart';
import 'package:sokrio_assignment/src/data/datasources/user_list_datasource.dart';
import 'package:sokrio_assignment/src/data/models/user_list_model.dart';
import 'package:sokrio_assignment/src/data/services/network/network_service.dart';

class UserListDatasourceImpl implements UserListDatasource {
  final NetworkService networkService;

  UserListDatasourceImpl({required this.networkService});

  @override
  Future<UserListModel> userList({
    required String endPoint,
    CancelToken? cancelToken,
  }) async {
    try {
      var response = await networkService.get(
        endPoint,
        cancelToken: cancelToken,
      );
      return response.fold((error) => throw error, (success) async {
        final jsonData = success.data;
        if (jsonData == null) {
          return throw Failure(
            type: FailureType.notFound,
            message: "Can't fetch data",
          );
        }
        print("Data: -------------$jsonData");
        // var parseData = await compute(userListFromJson, jsonEncode(jsonData));
        var data = UserListModel.fromJson(jsonData);
        return data;
      });
    } catch (e) {
      rethrow;
    }
  }
}
