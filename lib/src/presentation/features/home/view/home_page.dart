import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sokrio_assignment/src/core/constants/constants.dart';
import 'package:sokrio_assignment/src/presentation/core/widgets/loading_indicator.dart';
import 'package:sokrio_assignment/src/presentation/features/home/providers/user_list_provider.dart';

class HomePage extends StatefulHookConsumerWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  static const pageSize = 10;

  @override
  Widget build(BuildContext context) {
    final responseAsync = ref.watch(
      getUserListProvider(
        endPoint: "${ApiEndpoints.users}?per_page=$pageSize&&page=1",
      ),
    );

    return Scaffold(
      appBar: AppBar(title: Text("User List")),
      body: responseAsync.when(
        data: (data) => Text("Data Loaded"),
        error: (error, _) => Center(child: Text(error.toString())),
        loading: () => Center(child: LoadingIndicator()),
      ),
    );
  }
}
