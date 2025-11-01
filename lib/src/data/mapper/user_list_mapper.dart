import 'package:sokrio_assignment/src/domain/entities/user_list.dart';

import '../../domain/entities/user.dart';
import '../models/user_list_model.dart';

/// Mapper class that converts between data layer models and domain entities.
class UserMapper {
  /// Convert [UserListModel] → [UserList] (Data → Domain)
  static UserList toDomain(UserListModel model) {
    return UserList(
      page: model.page ?? 0,
      perPage: model.perPage ?? 0,
      total: model.total ?? 0,
      totalPages: model.totalPages ?? 0,
      data: model.data?.map(toDomainUser).toList() ?? [],
    );
  }

  /// Convert [UserList] → [UserListModel] (Domain → Data)
  static UserListModel toModel(UserList entity) {
    return UserListModel(
      page: entity.page,
      perPage: entity.perPage,
      total: entity.total,
      totalPages: entity.totalPages,
      data: entity.data?.map(toModelUser).toList(),
    );
  }

  /// Single user mapping
  static User toDomainUser(UserModel model) {
    return User(
      id: model.id ?? 0,
      email: model.email ?? '',
      firstName: model.firstName ?? '',
      lastName: model.lastName ?? '',
      avatar: model.avatar ?? '',
    );
  }

  /// Reverse single user mapping
  static UserModel toModelUser(User entity) {
    return UserModel(
      id: entity.id,
      email: entity.email,
      firstName: entity.firstName,
      lastName: entity.lastName,
      avatar: entity.avatar,
    );
  }
}
