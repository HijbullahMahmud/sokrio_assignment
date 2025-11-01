import 'package:flutter/material.dart';

class UserDetailScreen extends StatelessWidget {
  final String firstName;
  final String lastName;
  final String avatar;
  final String email;

  const UserDetailScreen({
    super.key,
    required this.firstName,
    required this.lastName,
    required this.avatar,
    required this.email,
  });
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
                avatar,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.person, size: 100, color: Colors.grey),
              ),
            ),
            Text(
              "$firstName $lastName",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(email, style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
      ),
    );
  }
}
