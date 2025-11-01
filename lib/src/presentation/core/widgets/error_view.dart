import 'package:flutter/material.dart';
import 'package:sokrio_assignment/src/presentation/core/theme/theme.dart';

class ErrorView extends StatelessWidget {
  final String message;
  final VoidCallback? onRetry;
  const ErrorView({super.key, required this.message, this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        spacing: 16,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.error),
          Text(
            message,
            style: Theme.of(
              context,
            ).textTheme.bodyLarge?.copyWith(color: context.color.error),
          ),

          FilledButton(onPressed: onRetry, child: Text("Retry")),
        ],
      ),
    );
  }
}
