import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:web_front/version_update/presentation/widgets/app_version_info_widget.dart';
import 'package:web_front/version_update/presentation/widgets/drag_drop_zone_widget.dart';

class UploadScreen extends ConsumerStatefulWidget {
  const UploadScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<UploadScreen> createState() => _UploadScreenState();
}

class _UploadScreenState extends ConsumerState<UploadScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
            child: Column(
          children: [
            AppVersionInfoWidget(),
            DragDropZoneWidget(),
          ],
        )),
      ),
    );
  }
}
