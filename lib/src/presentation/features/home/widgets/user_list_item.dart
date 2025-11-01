import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sokrio_assignment/src/domain/entities/user.dart';
import 'package:sokrio_assignment/src/presentation/core/router/routes.dart';

class UserListItem extends StatelessWidget {
  final User user;
  const UserListItem({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        context.pushNamed(Routes.detail, extra: user);
      },
      title: Text("${user.firstName} ${user.lastName}"),
      leading: CircleAvatar(backgroundImage: NetworkImage(user.avatar)),
    );
  }
}
