import 'package:sokrio_assignment/src/domain/entities/user.dart';

class UserList {
  int page;
  int perPage;
  int total;
  int totalPages;
  List<User> data;

  UserList({
    required this.page,
    required this.perPage,
    required this.total,
    required this.totalPages,
    required this.data,
  });
}
