import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:web/features/upload/presentation/provider/app_version_event.dart';
import 'package:web/features/upload/presentation/widgets/app_version_info_widget.dart';
import 'package:web/features/upload/presentation/widgets/app_version_submit_button_widget.dart';
import 'package:web/features/upload/presentation/widgets/drag_drop_zone_widget.dart';
import 'package:web/features/upload/presentation/widgets/latest_info_widget.dart';
import 'package:web/provider.dart';

class UploadPage extends ConsumerStatefulWidget {
  const UploadPage({Key? key}) : super(key: key);

  @override
  ConsumerState<UploadPage> createState() => _UploadScreenState();
}

class _UploadScreenState extends ConsumerState<UploadPage> {
  @override
  void initState() {
    super.initState();

    Future.microtask(
      () => ref
          .read(appVersionStateNotifierProvider.notifier)
          .mapEventToState(const AppVersionEvent.getLatestInfo()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: const [
            AppVersionInfoWidget(),
            LatestInfoWidget(),
            SizedBox(height: 8),
            AppVersionSubmitButton(),
            SizedBox(height: 8),
            DragDropZoneWidget(),
          ],
        ),
      ),
    );
  }
}
