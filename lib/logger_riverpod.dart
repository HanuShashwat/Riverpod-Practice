import 'package:flutter_riverpod/flutter_riverpod.dart';

base class LoggerRiverpod extends ProviderObserver {
  @override
  void didUpdateProvider(
      ProviderObserverContext context,
      Object? previousValue,
      Object? newValue,
      ) {
    final name = context.provider.name ?? context.provider.runtimeType;
    print('UPDATED: $name | New Value: $newValue');
  }

  @override
  void didAddProvider(
      ProviderObserverContext context,
      Object? value,
      ) {
    final name = context.provider.name ?? context.provider.runtimeType;
    print('ADDED: $name | Initial Value: $value');
  }

  @override
  void didDisposeProvider(
      ProviderObserverContext context,
      ) {
    final name = context.provider.name ?? context.provider.runtimeType;
    print('DISPOSED: $name');
  }
}