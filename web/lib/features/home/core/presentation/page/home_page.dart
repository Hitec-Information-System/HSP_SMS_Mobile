import 'package:flutter/material.dart';
import 'package:web/core/routes/app_router.gr.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {
              const UploadRoute().show(context);
            },
            child: const Text("File Upload"),
          )
        ],
      ),
    );
  }
}
