import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sokrio_assignment/src/core/di/dependency_injection.dart';

import 'src/presentation/core/router/router.dart';
import 'src/presentation/core/theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initDependencies();
  initDatasources();
  initRepositories();
  initUsecases();

  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MediaQuery.withClampedTextScaling(
      maxScaleFactor: 1.5,
      child: MaterialApp.router(
        theme: context.lightTheme,
        darkTheme: context.darkTheme,
        themeMode: ThemeMode.system,
        routerConfig: ref.read(goRouterProvider),
      ),
    );
  }
}
