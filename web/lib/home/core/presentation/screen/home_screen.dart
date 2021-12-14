import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:web/core/routes/app_router.gr.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Home"),
      floatingActionButton: FloatingActionButton(
        onPressed: () => AutoRouter.of(context).push(const BoardRoute()),
      ),
    );
  }
}
