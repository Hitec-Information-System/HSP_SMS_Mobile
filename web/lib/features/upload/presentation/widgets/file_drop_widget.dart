import 'package:desktop_drop/desktop_drop.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:web/core/constant/constant.dart';
import 'package:web/features/upload/application/app_version_event.dart';
import 'package:web/features/upload/presentation/widgets/widgets.dart';
import 'package:web/features/upload/shared/provider.dart';

/// drag & drop 하여 파일 추가하는 공간
class FileDropWidget extends ConsumerStatefulWidget {
  const FileDropWidget({Key? key}) : super(key: key);

  @override
  _DragDropWidgetState createState() => _DragDropWidgetState();
}

class _DragDropWidgetState extends ConsumerState<FileDropWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _dotLineColor;
  late Animation _backgroundColor;
  late Animation<double> _padding;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );
    final _curveAnimation =
        CurvedAnimation(parent: _controller, curve: Curves.ease);
    _dotLineColor = ColorTween(
      begin: Colors.grey.withOpacity(.8),
      end: kSecondaryThemeColor,
    ).animate(_curveAnimation);
    _backgroundColor = ColorTween(
      begin: Colors.transparent,
      end: kSecondaryThemeColor.withOpacity(.1),
    ).animate(_curveAnimation);
    _padding = Tween<double>(begin: 18, end: 20).animate(_curveAnimation);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext contsext) {
    print("drop drag built");

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Padding(
          padding: EdgeInsets.all(_padding.value),
          child: DottedBorder(
            color: _dotLineColor.value,
            borderType: BorderType.RRect,
            radius: const Radius.circular(12),
            dashPattern: const [12, 8],
            strokeWidth: 2.5,
            child: Container(
              decoration: BoxDecoration(
                color: _backgroundColor.value,
                borderRadius: BorderRadius.circular(12),
              ),
              child: child,
            ),
          ),
        );
      },
      child: DropTarget(
        onDragDone: (DropDoneDetails details) {
          final canAddFile =
              ref.read(appVersionStateNotifierProvider.notifier).canAddFile;

          if (canAddFile(details.files)) {
            _controller.reverse();
            ref.read(appVersionStateNotifierProvider.notifier).mapEventToState(
                AppVersionEvent.dropFileToDomain(details.files[0]));
          }
        },
        onDragEntered: (DropEventDetails _) {
          _controller.forward();
        },
        onDragExited: (DropEventDetails _) {
          _controller.reverse();
        },
        child: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(flex: 2),
              const Text(
                "Drag & Drop a file here to upload",
                style: TextStyle(
                  color: kPrimaryThemeColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 18),
              Text(
                "or",
                style: TextStyle(
                  color: kPrimaryThemeColor.withOpacity(.6),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 18),
              const FileBrowseButton(),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
