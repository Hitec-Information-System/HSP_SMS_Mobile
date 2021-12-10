import 'package:desktop_drop/desktop_drop.dart';
import 'package:flutter/material.dart';

class DragDropZoneWidget extends StatefulWidget {
  const DragDropZoneWidget({Key? key}) : super(key: key);

  @override
  State<DragDropZoneWidget> createState() => _DragDropZoneWidgetState();
}

class _DragDropZoneWidgetState extends State<DragDropZoneWidget> {
  Color _color = Colors.black26;
  Offset? offset;

  @override
  Widget build(BuildContext context) {
    return DropTarget(
      onDragDone: (DropDoneDetails details) {
        setState(() {
          print("drag done");
          print(details.urls);
          _color = Colors.amber;
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
