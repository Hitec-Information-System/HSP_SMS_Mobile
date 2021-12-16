import 'package:desktop_drop/desktop_drop.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:web/features/upload/domain/entity/app_version.dart';
import 'package:web/features/upload/presentation/provider/app_version_event.dart';
import 'package:web/provider.dart';

class DragDropZoneWidget extends ConsumerStatefulWidget {
  const DragDropZoneWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<DragDropZoneWidget> createState() => _DragDropZoneWidgetState();
}

class _DragDropZoneWidgetState extends ConsumerState<DragDropZoneWidget> {
  @override
  Widget build(BuildContext context) {
    final state =
        ref.watch(appVersionStateNotifierProvider.select((state) => state));

    return state.when(
      empty: (AppVersion version) {
        return DragDropWidget();
      },
      failure: (AppVersion version, String message) {
        return DragDropWidget();
      },
      fileAdded: (AppVersion version) {
        return Container(
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.all(8),
          height: 200,
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(12),
          ),
          alignment: Alignment.center,
          child: Text(version.file!.path),
        );
      },
      loaded: (AppVersion version) {
        return DragDropWidget();
      },
      loading: (AppVersion version) {
        return DragDropWidget();
      },
      saved: (AppVersion version) {
        return DragDropWidget();
      },
    );
  }
}

class DragDropWidget extends ConsumerStatefulWidget {
  const DragDropWidget({Key? key}) : super(key: key);

  @override
  _DragDropWidgetState createState() => _DragDropWidgetState();
}

class _DragDropWidgetState extends ConsumerState<DragDropWidget> {
  Color _color = Colors.black26;
  Offset? offset;

  @override
  Widget build(BuildContext context) {
    return DropTarget(
      onDragDone: (DropDoneDetails details) {
        setState(() {
          print("drag done");
          print(details.urls);
          ref.read(appVersionStateNotifierProvider.notifier).mapEventToState(
              AppVersionEvent.addFileToDomain(details.urls[0].path));
        });
      },
      onDragUpdated: (DropEventDetails details) {
        setState(() {
          print("drag updated");
          offset = details.localPosition;
        });
      },
      onDragEntered: (DropEventDetails details) {
        setState(() {
          print("drag entered");
          _color = Colors.blue.withOpacity(.3);
          offset = details.localPosition;
        });
      },
      onDragExited: (DropEventDetails details) {
        setState(() {
          print("drag exited");
          _color = Colors.black26;
          offset = null;
        });
      },
      child: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(8),
        height: 200,
        decoration: BoxDecoration(
          color: _color,
          borderRadius: BorderRadius.circular(12),
        ),
        alignment: Alignment.center,
        child: const Text("Drop here"),
      ),
    );
  }
}
