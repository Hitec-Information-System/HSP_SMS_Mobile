import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:web/features/upload/domain/entity/app_version.dart';
import 'package:web/features/upload/presentation/provider/app_version_event.dart';
import 'package:web/provider.dart';

// AppVersion 등록 Widget
class AppVersionInfoWidget extends StatelessWidget {
  const AppVersionInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Text(
          "Upload New Version",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        SizedBox(height: 12),
        AppVersionSetWidget(),
      ],
    );
  }
}

// Sementic Version 정보 위젯
class AppVersionSetWidget extends ConsumerWidget {
  const AppVersionSetWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final info = ref.watch(
        appVersionStateNotifierProvider.select((state) => state.version.info));

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        VersionNoWidget(
          symenticName: "Major",
          versionNo: info.major,
          onChanged: (int newValue) {
            ref.read(appVersionStateNotifierProvider.notifier).mapEventToState(
                AppVersionEvent.changeVersionNo(
                    AppVersionInfo(major: newValue, minor: 0, patch: 0)));
          },
        ),
        const SizedBox(width: 24),
        VersionNoWidget(
          symenticName: "Minor",
          versionNo: info.minor,
          onChanged: (int newValue) {
            if (newValue > info.minor) {
              ref
                  .read(appVersionStateNotifierProvider.notifier)
                  .mapEventToState(AppVersionEvent.changeVersionNo(
                    AppVersionInfo(
                        major: info.major, minor: newValue, patch: 0),
                  ));
            }
          },
        ),
        const SizedBox(width: 24),
        VersionNoWidget(
          symenticName: "Patch",
          versionNo: info.patch,
          onChanged: (int newValue) {
            ref.read(appVersionStateNotifierProvider.notifier).mapEventToState(
                  AppVersionEvent.changeVersionNo(
                    AppVersionInfo(
                        major: info.major, minor: info.minor, patch: newValue),
                  ),
                );
          },
        ),
      ],
    );
  }
}

// 각 Sementic version 정보를 선택하는 DropDown Widget
class VersionNoWidget extends StatefulWidget {
  const VersionNoWidget({
    Key? key,
    required this.symenticName,
    required this.versionNo,
    required this.onChanged,
  }) : super(key: key);

  final String symenticName;
  final int versionNo;
  final void Function(int) onChanged;

  @override
  State<VersionNoWidget> createState() => _VersionNoWidgetState();
}

class _VersionNoWidgetState extends State<VersionNoWidget> {
  final _items = List.generate(21, (int no) => no);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(widget.symenticName),
        DropdownButton<int>(
          onChanged: (int? newValue) {
            if (newValue == null) return;
            // if (newValue <= widget.versionNo) return;
            widget.onChanged.call(newValue);
          },
          value: widget.versionNo != -1 ? widget.versionNo : 0,
          items: _items
              .map(
                (int versionNo) => DropdownMenuItem<int>(
                  value: versionNo,
                  child: Text("$versionNo"),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
