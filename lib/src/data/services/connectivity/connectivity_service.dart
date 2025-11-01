import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

part 'connectivity_service.g.dart';

@riverpod
Stream<List<ConnectivityResult>> connectivityStatus(Ref ref) {
  return Connectivity().onConnectivityChanged;
}

@riverpod
class IsOnline extends _$IsOnline {
  @override
  bool build() {
    ref.listen(connectivityStatusProvider, (previous, next) {
      next.when(
        data: (results) {
          state = !results.contains(ConnectivityResult.none);
        },
        error: (_, __) => state = false,
        loading: () {},
      );
    });

    _checkInitialConnectivity();
    return true;
  }

  Future<void> _checkInitialConnectivity() async {
    final results = await Connectivity().checkConnectivity();
    state = !results.contains(ConnectivityResult.none);
  }
}
