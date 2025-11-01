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
            final email = state.uri.queryParameters['email']!;
            final firstName = state.uri.queryParameters['firstName']!;
            final lastName = state.uri.queryParameters['lastName']!;
            final avatar = state.uri.queryParameters['avatar']!;

            return MaterialPage(
              child: UserDetailScreen(
                email: email,
                firstName: firstName,
                lastName: lastName,
                avatar: avatar,
              ),
            );
          },
        ),
      ],
    ),
  ];
}
