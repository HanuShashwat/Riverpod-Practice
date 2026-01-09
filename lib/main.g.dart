// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(fetchUser)
final fetchUserProvider = FetchUserFamily._();

final class FetchUserProvider
    extends $FunctionalProvider<AsyncValue<User>, User, FutureOr<User>>
    with $FutureModifier<User>, $FutureProvider<User> {
  FetchUserProvider._({
    required FetchUserFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'fetchUserProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$fetchUserHash();

  @override
  String toString() {
    return r'fetchUserProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<User> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<User> create(Ref ref) {
    final argument = this.argument as String;
    return fetchUser(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchUserProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$fetchUserHash() => r'a114b88ca8dbb7cb5a5694e8c63678b3779ec09a';

final class FetchUserFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<User>, String> {
  FetchUserFamily._()
    : super(
        retry: null,
        name: r'fetchUserProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  FetchUserProvider call(String input) =>
      FetchUserProvider._(argument: input, from: this);

  @override
  String toString() => r'fetchUserProvider';
}
