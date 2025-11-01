import 'package:flutter/material.dart';
import 'package:sokrio_assignment/src/domain/entities/user.dart';

class UserDetailScreen extends StatelessWidget {
  final User user;
  const UserDetailScreen({super.key, required this.user});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("User Details")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 16,
          children: [
            ClipOval(
              child: Image.network(
                user.avatar,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.person, size: 100, color: Colors.grey),
              ),
            ),
            Text(
              "${user.firstName} ${user.lastName}",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(user.email, style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
      ),
    );
  }
}
