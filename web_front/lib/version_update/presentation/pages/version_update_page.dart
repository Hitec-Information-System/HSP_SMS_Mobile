import 'package:desktop_drop/desktop_drop.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:web_front/version_update/presentation/widgets/draggable_spot.dart';

import 'package:web_front/version_update/shared/providers.dart';

class VersionUpdatePage extends StatelessWidget {
  const VersionUpdatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 16, left: 28),
        width: 350,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Consumer(
              builder: (context, ref, child) {
                return ElevatedButton(
                  child: const Text('Select a file'),
                  onPressed: () {
                    ref
                        .read(versionStateNotifierProvider.notifier)
                        .pickVersionFile();
                  },
                );
              },
            ),
            const DraggableSpot(),
          ],
        ),
      ),
    );
  }
}
