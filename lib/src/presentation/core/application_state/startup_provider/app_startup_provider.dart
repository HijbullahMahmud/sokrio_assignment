import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sokrio_assignment/src/data/services/cache/shared_preference_provider.dart';


part 'app_startup_provider.g.dart';

@Riverpod(keepAlive: true)
Future<void> appStartup(Ref ref) async {

  ref.onDispose(() {
    ref.invalidate(sharedPreferencesProvider);
  });

  await ref.watch(sharedPreferencesProvider.future);
}
