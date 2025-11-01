part of '../router.dart';

List<GoRoute> _homeRoutes(Ref ref) {
  return [
    GoRoute(
      path: Routes.home,
      name: Routes.home,
      pageBuilder: (context, state) {
        return const MaterialPage(child: HomePage());
      },
      routes: [
        GoRoute(
          path: Routes.detail,
          name: Routes.detail,
          pageBuilder: (context, state) {
            User user = state.extra as User;
            return MaterialPage(child: UserDetailScreen(user: user));
          },
        ),
      ],
    ),
  ];
}
