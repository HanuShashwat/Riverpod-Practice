import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice/main.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen ({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(fetchUserProvider).when(
        data: (data) {
          return Scaffold(
            appBar: AppBar(),
            body: Column(
              children: [
                Center(
                  child: Text(data.name),
                )
              ],
            ),
          );
        },
        error: (error, stackTrace) {
          return Scaffold(
            body: Center(
              child: Text(
                error.toString(),
              ),
            ),
          );
        },
        loading: () {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
    );
  }
}
