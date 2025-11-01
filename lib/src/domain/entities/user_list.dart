import 'package:sokrio_assignment/src/domain/entities/user.dart';

class UserList {
  int? page;
  int? perPage;
  int? total;
  int? totalPages;
  List<User>? data;

  UserList({this.page, this.perPage, this.total, this.totalPages, this.data});

  UserList copyWith({
    int? page,
    int? perPage,
    int? total,
    int? totalPages,
    List<User>? data,
  }) {
    return UserList(
      page: page ?? this.page,
      perPage: perPage ?? this.perPage,
      total: total ?? this.total,
      totalPages: totalPages ?? this.totalPages,
      data: data ?? this.data,
    );
  }
}
