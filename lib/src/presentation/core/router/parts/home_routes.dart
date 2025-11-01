part of '../router.dart';

List<GoRoute> _homeRoutes(Ref ref) {
  return [
    GoRoute(
      path: Routes.home,
      name: Routes.home,
      pageBuilder: (context, state) {
        return const MaterialPage(child: HomePage());
      },
    ),
  ];
}
