// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(userList)
const userListProvider = UserListProvider._();

final class UserListProvider
    extends
        $FunctionalProvider<
          UserListNotifier,
          UserListNotifier,
          UserListNotifier
        >
    with $Provider<UserListNotifier> {
  const UserListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userListHash();

  @$internal
  @override
  $ProviderElement<UserListNotifier> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  UserListNotifier create(Ref ref) {
    return userList(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UserListNotifier value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UserListNotifier>(value),
    );
  }
}

String _$userListHash() => r'576fedf497a4d39e1402986e81de57e4b0152237';

@ProviderFor(getUserList)
const getUserListProvider = GetUserListFamily._();

final class GetUserListProvider
    extends
        $FunctionalProvider<
          AsyncValue<UserList?>,
          UserList?,
          FutureOr<UserList?>
        >
    with $FutureModifier<UserList?>, $FutureProvider<UserList?> {
  const GetUserListProvider._({
    required GetUserListFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'getUserListProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$getUserListHash();

  @override
  String toString() {
    return r'getUserListProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<UserList?> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<UserList?> create(Ref ref) {
    final argument = this.argument as String;
    return getUserList(ref, endPoint: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is GetUserListProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$getUserListHash() => r'359187e1fc6875edbd87dda30be361e1bf7b15cc';

final class GetUserListFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<UserList?>, String> {
  const GetUserListFamily._()
    : super(
        retry: null,
        name: r'getUserListProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  GetUserListProvider call({required String endPoint}) =>
      GetUserListProvider._(argument: endPoint, from: this);

  @override
  String toString() => r'getUserListProvider';
}
