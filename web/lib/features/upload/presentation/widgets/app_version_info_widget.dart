import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:web/provider.dart';

// AppVersion 등록 Widget
class AppVersionInfoWidget extends StatelessWidget {
  const AppVersionInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "Upload New Version",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        const SizedBox(height: 12),
        Consumer(
          builder: (context, ref, child) {
            final _versionInfo = ref.watch(
              appVersionStateNotifierProvider
                  .select((state) => state.version.info),
            );

            return AppVersionSetWidget(
              major: _versionInfo.major,
              minor: _versionInfo.minor,
              patch: _versionInfo.patch,
            );
          },
        ),
      ],
    );
  }
}

// Sementic Version 정보 위젯
// - 상위 version을 바꿨을 때 하위 version을 0으로 만들기 위해 StatefulWidget 사용함
class AppVersionSetWidget extends StatefulWidget {
  const AppVersionSetWidget({
    Key? key,
    required this.major,
    required this.minor,
    required this.patch,
  }) : super(key: key);

  final int major;
  final int minor;
  final int patch;

  @override
  _AppVersionSetWidgetState createState() => _AppVersionSetWidgetState();
}

class _AppVersionSetWidgetState extends State<AppVersionSetWidget> {
  late int _major;
  late int _minor;
  late int _patch;

  @override
  void initState() {
    super.initState();
    _major = widget.major;
    _minor = widget.minor;
    _patch = widget.patch;
  }

  @override
  void didUpdateWidget(covariant AppVersionSetWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.major != widget.major ||
        oldWidget.minor != widget.minor ||
        oldWidget.patch != widget.patch) {
      setState(() {
        _major = widget.major;
        _minor = widget.minor;
        _patch = widget.patch;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        VersionNoWidget(
          symenticName: "Major",
          versionNo: _major,
          onChanged: (int newValue) {
            if (newValue > _major) {
              setState(() {
                _patch = 0;
                _minor = 0;
                _major = newValue;
              });
            }
          },
        ),
        const SizedBox(width: 24),
        VersionNoWidget(
          symenticName: "Minor",
          versionNo: _minor,
          onChanged: (int newValue) {
            if (newValue > _minor) {
              setState(() {
                _patch = 0;
                _minor = newValue;
              });
            }
          },
        ),
        const SizedBox(width: 24),
        VersionNoWidget(
          symenticName: "Patch",
          versionNo: _patch,
          onChanged: (int newValue) {
            setState(() {
              _patch = newValue;
            });
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
  final _items = List.generate(21, (int i) => i);

  @override
  void didUpdateWidget(covariant VersionNoWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.versionNo != widget.versionNo) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(widget.symenticName),
        DropdownButton<int>(
          onChanged: (int? newValue) {
            if (newValue != null) {
              setState(() {
                widget.onChanged.call(newValue);
              });
            }
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
