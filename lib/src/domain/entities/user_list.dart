import 'package:sokrio_assignment/src/domain/entities/user.dart';

class UserList {
  int? page;
  int? perPage;
  int? total;
  int? totalPages;
  List<User>? data;

  UserList({this.page, this.perPage, this.total, this.totalPages, this.data});
}
