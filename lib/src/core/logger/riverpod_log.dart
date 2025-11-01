// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_riverpod/misc.dart';
// import 'log.dart';

// sealed class RiverpodObserver extends ProviderObserver {
//   @override
//   void providerDidAdd(
//     ProviderBase<Object?> provider,
//     Object? value,
//     ProviderContainer container,
//   ) {
//     Log.info('🟢 Provider added: $provider with value: $value');
//   }

//   @override
//   void providerDidUpdate(
//     ProviderBase<Object?> provider,
//     Object? previousValue,
//     Object? newValue,
//     ProviderContainer container,
//   ) {
//     Log.info('🔵 Provider updated: $provider from $previousValue → $newValue');
//   }

//   @override
//   void providerDidDispose(
//     ProviderBase<Object?> provider,
//     ProviderContainer container,
//   ) {
//     Log.warning('🟠 Provider disposed: $provider');
//   }

//   @override
//   void providerDidFail(
//     ProviderBase<Object?> provider,
//     Object error,
//     StackTrace stackTrace,
//     ProviderContainer container,
//   ) {
//     Log.error('🔴 Provider error: $provider threw $error\n$stackTrace');
//   }
// }
