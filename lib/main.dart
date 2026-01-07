import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:riverpod_practice/home_screen.dart';
import 'package:riverpod_practice/user.dart';
import 'package:http/http.dart' as http;

// Providers
// Provider
// StateProvider
// StateNotifier and StateNotifierProvider
// ChangeNotifierProvider
// FutureProvider

final fetchUserProvider = FutureProvider((ref) {
  const url = 'https://jsonplaceholder.typicode.com/users/1';
  
  return http.get(Uri.parse(url)).then((value) => User.fromJson(value.body));
});

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
