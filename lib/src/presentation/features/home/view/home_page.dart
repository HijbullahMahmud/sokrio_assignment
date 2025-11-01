import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sokrio_assignment/src/core/constants/constants.dart';
import 'package:sokrio_assignment/src/presentation/core/router/routes.dart';
import 'package:sokrio_assignment/src/presentation/core/widgets/loading_indicator.dart';
import 'package:sokrio_assignment/src/presentation/features/home/providers/user_list_provider.dart';
import 'package:sokrio_assignment/src/presentation/features/home/widgets/user_shimmer.dart';

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
        endPoint: "${ApiEndpoints.users}?per_page=$pageSize&page=1",
      ),
    );

    final totalResult = responseAsync.value?.total ?? 0;

    return Scaffold(
      appBar: AppBar(title: Text("User List")),
      body: responseAsync.when(
        data: (data) => ListView.builder(
          shrinkWrap: true,
          itemCount: totalResult,
          itemBuilder: (BuildContext context, int index) {
            final page = index ~/ pageSize + 1;
            final indexInPage = index % pageSize;
            final response = ref.watch(
              getUserListProvider(
                endPoint: "${ApiEndpoints.users}?per_page=$pageSize&page=$page",
              ),
            );

            return response.when(
              data: (data) {
                if (data == null && data?.data == null) {
                  return null;
                }

                if (data == null || indexInPage >= data.data.length) {
                  return null;
                }
                final user = data.data[indexInPage];
                return ListTile(
                  onTap: () {
                    context.pushNamed(Routes.detail, extra: user);
                  },
                  title: Text(
                    "${user.firstName} ${user.lastName}",
                    style: Theme.of(
                      context,
                    ).textTheme.bodyLarge?.copyWith(color: Colors.black),
                  ),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(user.avatar),
                  ),
                );
              },
              error: (e, stack) => const SizedBox.shrink(),
              loading: () => Center(child: UserShimmer()),
            );
          },
        ),
        error: (error, _) => Center(child: Text(error.toString())),
        loading: () => Center(child: LoadingIndicator()),
      ),
    );
  }
}
