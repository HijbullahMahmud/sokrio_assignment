import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:sokrio_assignment/src/core/constants/constants.dart';
import 'package:sokrio_assignment/src/data/services/network/exceptions/failure.dart';
import 'package:sokrio_assignment/src/presentation/core/widgets/error_view.dart';
import 'package:sokrio_assignment/src/presentation/core/widgets/loading_indicator.dart';
import 'package:sokrio_assignment/src/presentation/features/home/providers/query_provider.dart';
import 'package:sokrio_assignment/src/presentation/features/home/providers/user_list_provider.dart';
import 'package:sokrio_assignment/src/presentation/features/home/widgets/user_list_item.dart';
import 'package:sokrio_assignment/src/presentation/features/home/widgets/user_shimmer.dart';

class HomePage extends StatefulHookConsumerWidget {
  const HomePage({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final _searchController = TextEditingController();
  static const pageSize = 10;

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  Future<void> retry() async {
    if (!mounted) return;
    // Set query
    ref.read(queryChangeProvider.notifier).setQuery('');
    ref.invalidate(userListProvider);
  }

  @override
  Widget build(BuildContext context) {
    final query = ref.watch(queryChangeProvider);

    final responseAsync = ref.watch(
      getFilteredUserListProvider(
        endPoint: "${ApiEndpoints.users}?per_page=$pageSize&page=1",
      ),
    );

    final totalResult = responseAsync.value?.total ?? 0;

    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: _searchController,
          decoration: InputDecoration(
            hintText: "Search users...",
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search),
          ),
          onChanged: (value) =>
              ref.read(queryChangeProvider.notifier).setQuery(value),
        ),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(userListProvider);
          return Future.delayed(Duration(microseconds: 300));
        },
        child: responseAsync.when(
          data: (data) {
            if (data == null || data.data == null || data.data!.isEmpty) {
              return Center(
                child: Text(
                  query.isEmpty
                      ? 'No users available'
                      : 'No users found matching "$query"',
                ),
              );
            }
            return ListView.builder(
              shrinkWrap: true,
              itemCount: totalResult,
              itemBuilder: (BuildContext context, int index) {
                final page = index ~/ pageSize + 1;
                final indexInPage = index % pageSize;
                final response = ref.watch(
                  getFilteredUserListProvider(
                    endPoint:
                        "${ApiEndpoints.users}?per_page=$pageSize&page=$page",
                  ),
                );
                return response.when(
                  data: (data) {
                    if (data == null && data?.data == null) {
                      return null;
                    }
                    if (data == null || indexInPage >= data.data!.length) {
                      return null;
                    }
                    final user = data.data?[indexInPage];
                    if (user == null) return const SizedBox.shrink();
                    return UserListItem(user: user);
                  },
                  error: (e, stack) => const SizedBox.shrink(),
                  loading: () => UserShimmer(),
                );
              },
            );
          },
          error: (error, stack) {
            if (error is Failure) {
              return Center(
                child: ErrorView(message: error.error, onRetry: retry),
              );
            }
            return Center(
              child: ErrorView(message: error.toString(), onRetry: retry),
            );
          },
          loading: () => Center(child: LoadingIndicator()),
        ),
      ),
    );
  }
}
