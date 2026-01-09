// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(userRepo)
final userRepoProvider = UserRepoProvider._();

final class UserRepoProvider
    extends $FunctionalProvider<UserRepo, UserRepo, UserRepo>
    with $Provider<UserRepo> {
  UserRepoProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'userRepoProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$userRepoHash();

  @$internal
  @override
  $ProviderElement<UserRepo> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  UserRepo create(Ref ref) {
    return userRepo(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(UserRepo value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<UserRepo>(value),
    );
  }
}

String _$userRepoHash() => r'f3573062673160f0efc6a6135db30e7d6d93bef8';
