import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:web/core/constant/constant.dart';
import 'package:web/core/widgets/widgets.dart';
import 'package:web/features/upload/presentation/provider/app_version_event.dart';
import 'package:web/provider.dart';

/// 새로운 버전 등록 버튼
class AppInfoSubmitButton extends ConsumerWidget {
  const AppInfoSubmitButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: () {
        if (ref.read(appVersionStateNotifierProvider.notifier).canSave) {
          showDialog(
            context: context,
            barrierColor: Colors.black26,
            builder: (context) {
              return NormalDialog(
                title: kSaveText,
                message: saveDialogText,
                color: kPrimaryThemeColor,
                leadingIcon: Icons.save,
                yesTitle: kYesText,
                noTitle: kNoText,
                onYesPressed: () => ref
                    .read(appVersionStateNotifierProvider.notifier)
                    .mapEventToState(
                      const AppVersionEvent.saveNewVersion(),
                    ),
                onNoPressed: () {},
              );
            },
          );
        }
      },
      child: const Text("Upload"),
    );
  }
}

/// 등록할 파일 찾아보기 버튼
class FileBrowseButton extends ConsumerWidget {
  const FileBrowseButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomButton(
      onTap: () {
        ref.read(appVersionStateNotifierProvider.notifier).mapEventToState(
              const AppVersionEvent.pickFileToDomain(),
            );
      },
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
      text: "Browse File",
      textStyle: const TextStyle(
        color: kPrimaryThemeColor,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}

// 파일 등록 취소 버튼
class FileAddCancelButton extends ConsumerStatefulWidget {
  const FileAddCancelButton({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<FileAddCancelButton> createState() =>
      _FileAddCancelButtonState();
}

class _FileAddCancelButtonState extends ConsumerState<FileAddCancelButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _buttonSize;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 150),
    );
    final _curveAnimation =
        CurvedAnimation(parent: _controller, curve: Curves.ease);
    _buttonSize = Tween<double>(
      begin: 30,
      end: 25,
    ).animate(_curveAnimation);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      width: 35,
      child: GestureDetector(
        onTapDown: (TapDownDetails _) {
          _controller.forward();
        },
        onTapUp: (TapUpDetails _) {
          _controller.reverse();
          ref
              .read(appVersionStateNotifierProvider.notifier)
              .mapEventToState(const AppVersionEvent.cancelAddFile());
        },
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Icon(
              Icons.clear,
              size: _buttonSize.value,
            );
          },
        ),
      ),
    );
  }
}
