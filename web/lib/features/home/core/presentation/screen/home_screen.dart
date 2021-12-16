import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:web/features/auth/shared/provider.dart';
import 'package:web/features/home/core/presentation/page/home_page.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: GestureDetector(
              onTap: () {
                ref.read(authStateNotifierProvider.notifier).signOut();
              },
              child: const CircleAvatar(
                child: Icon(
                  Icons.person,
                ),
              ),
            ),
          ),
        ],
      ),
      body: const HomePage(),
    );
  }
}
