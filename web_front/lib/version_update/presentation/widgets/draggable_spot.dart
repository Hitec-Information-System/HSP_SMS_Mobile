import 'package:desktop_drop/desktop_drop.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class DraggableSpot extends StatefulWidget {
  const DraggableSpot({Key? key}) : super(key: key);

  @override
  _DraggableSpotState createState() => _DraggableSpotState();
}

class _DraggableSpotState extends State<DraggableSpot> {
  bool _dragging = false;

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: const Radius.circular(12),
      padding: const EdgeInsets.all(6),
      color: _dragging ? Colors.blue.withOpacity(0.4) : Colors.black26,
      strokeWidth: 3,
      dashPattern: const [7, 5],
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        child: DropTarget(
          onDragDone: (DropDoneDetails detail) {
            setState(() {
              // use this one: detail.urls

              detail.urls[0];
            });
          },
          onDragEntered: (DropEventDetails detail) {
            setState(() {
              _dragging = true;
            });
          },
          onDragExited: (DropEventDetails detail) {
            setState(() {
              _dragging = false;
            });
          },
          child: Container(
            height: 200,
            width: 200,
            color: _dragging ? Colors.blue.withOpacity(0.4) : Colors.black26,
            child: Text("Drop here"),
          ),
        ),
      ),
    );
  }
}
