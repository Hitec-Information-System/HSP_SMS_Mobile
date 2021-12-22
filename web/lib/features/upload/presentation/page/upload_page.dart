import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:web/features/upload/presentation/provider/app_version_event.dart';
import 'package:web/features/upload/presentation/widgets/widgets.dart';
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
    return Stack(
      children: [
        Positioned(
          left: 0,
          top: 0,
          right: 0,
          bottom: MediaQuery.of(context).size.height / 2,
          child: const BackgroundWidget(),
        ),
        const Center(
          child: DragDropZoneWidget(),
        ),
      ],
    );
  }
}
