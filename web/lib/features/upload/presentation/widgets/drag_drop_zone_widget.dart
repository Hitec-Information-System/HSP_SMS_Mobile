import 'package:desktop_drop/desktop_drop.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:web/core/constant/constant.dart';
import 'package:web/core/widgets/widgets.dart';
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
          child: Text(version.file?.name ?? "File Added"),
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
  Color? _backgroundColor;
  Color _dottedLineColor = Colors.grey.withOpacity(.8);

  EdgeInsetsGeometry _padding = const EdgeInsets.all(24);

  @override
  void initState() {
    super.initState();
  }

  void _dragEntered(DropEventDetails _) {
    setState(() {
      _padding = const EdgeInsets.all(36);
      _dottedLineColor = kSecondaryThemeColor;
      _backgroundColor = kSecondaryThemeColor.withOpacity(.1);
    });
  }

  void _dragExited(DropEventDetails _) {
    setState(() {
      _padding = const EdgeInsets.all(24);
      _dottedLineColor = Colors.grey.withOpacity(.8);
    });
  }

  @override
  Widget build(BuildContext contsext) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 1000),
      curve: Curves.elasticOut,
      width: 600,
      height: 350,
      padding: _padding,
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.1),
            offset: const Offset(7, 10),
            blurRadius: 2.0,
          )
        ],
      ),
      child: DottedBorder(
        color: _dottedLineColor,
        // color: kSecondaryThemeColor,
        borderType: BorderType.RRect,
        radius: const Radius.circular(12),
        dashPattern: const [12, 8],
        strokeWidth: 2.5,
        child: Container(
          decoration: BoxDecoration(
            color: _backgroundColor ?? Theme.of(context).backgroundColor,
          ),
          child: DropTarget(
            onDragDone: (DropDoneDetails details) {
              ref
                  .read(appVersionStateNotifierProvider.notifier)
                  .mapEventToState(
                      AppVersionEvent.addFileToDomain(details.urls[0].path));
            },
            onDragEntered: _dragEntered,
            onDragExited: _dragExited,
            child: Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  const Spacer(),
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
        ),
      ),
    );
  }
}

class FileBrowseButton extends StatelessWidget {
  const FileBrowseButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      onTap: () {},
      width: 200,
      height: 50,
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: kPrimaryThemeColor.withOpacity(.2),
          width: 2.5,
        ),
      ),
      // TODO: 선택하는것도 가능하게 만들기 (originally Browse File)
      text: "Not yet implemented",
      textStyle: const TextStyle(
        color: kPrimaryThemeColor,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
