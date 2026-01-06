import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:riverpod_practice/home_screen.dart';

// Providers
// Provider
// StateProvider

//final nameProvider = Provider<String>((ref) => "Hanu Shashwat");
final nameProvider = StateProvider<String?>((ref) => null);

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
