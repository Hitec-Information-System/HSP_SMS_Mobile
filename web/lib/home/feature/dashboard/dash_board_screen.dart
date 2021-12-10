import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: () {}, child: const Text("Products")),
            ElevatedButton(onPressed: () {}, child: const Text("Add Product")),
          ],
        ),
      ),
    );
  }
}
