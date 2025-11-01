import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

extension RefAsListenable on Ref {
  ValueListenable<T> asListenable<T>(ProviderListenable<T> provider) {
    final notifier = ValueNotifier(read(provider));

    final sub = listen<T>(provider, (prev, next) {
      if (notifier.value != next) {
        notifier.value = next;
      }
    }, fireImmediately: false);

    onDispose(() {
      try {
        sub.close();
      } catch (_) {
        // Prevent "already disposed" errors during hot reload
      }
      notifier.dispose();
    });

    return notifier;
  }
}
