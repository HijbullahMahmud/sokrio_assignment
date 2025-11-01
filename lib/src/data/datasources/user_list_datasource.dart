import 'package:dio/dio.dart';
import 'package:sokrio_assignment/src/data/models/user_list_model.dart';

abstract class UserListDatasource {
   Future<UserListModel> userList({required String endPoint, CancelToken? cancelToken});
}