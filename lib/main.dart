import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_practice/home_screen.dart';
import 'package:riverpod_practice/logger_riverpod.dart';
import 'package:riverpod_practice/user.dart';
part 'main.g.dart';

// Providers
// Provider
// StateProvider
// StateNotifier and StateNotifierProvider
// ChangeNotifierProvider
// FutureProvider
// StreamProvider

// WidgetRef
// ProviderRef
// Ref

// ProviderObserver

@riverpod
Future<User> fetchUser(FetchUserRef ref, String input) {
  final userRepo = ref.watch(userRepoProvider);
  return userRepo.fetchUserData(input);
}

// final fetchUserProvider = FutureProvider.family.autoDispose((ref, String input) {
//   final userRepo = ref.watch(userRepoProvider);
//   return userRepo.fetchUserData(input);
// });

final streamProvider = StreamProvider.autoDispose((ref) async* {
  yield [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
});

void main() {
  runApp(
    ProviderScope(
      observers: [
        LoggerRiverpod(),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Riverpod Practice',
      home: MyHomePage(),
    );
  }
}
