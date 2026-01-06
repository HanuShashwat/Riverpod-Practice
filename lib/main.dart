import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:riverpod_practice/home_screen.dart';
import 'package:riverpod_practice/user.dart';

// Providers
// Provider
// StateProvider
// StateNotifier and StateNotifierProvider

final userProvider = StateNotifierProvider<UserNotifier, User>(
      (ref) => UserNotifier(
        const User(
            name: " ",
            age: 0
        ),
      ),
);

void main() {
  runApp(
    ProviderScope(
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
      home: HomeScreen(),
    );
  }
}
