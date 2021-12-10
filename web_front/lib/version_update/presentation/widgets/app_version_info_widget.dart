import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:web_front/version_update/shared/providers.dart';

class AppVersionInfoWidget extends StatelessWidget {
  const AppVersionInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("Latest Version"),
        Consumer(
          builder: (context, ref, child) {
            final _state = ref.watch(versionStateNotifierProvider);
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                VersionNoWidget(
                    symenticName: "Major",
                    versionNo: _state.version.versionNo.major),
                VersionNoWidget(
                    symenticName: "Minor",
                    versionNo: _state.version.versionNo.major),
                VersionNoWidget(
                    symenticName: "Patch",
                    versionNo: _state.version.versionNo.major),
              ],
            );
          },
        )
      ],
    );
  }
}

class VersionNoWidget extends StatefulWidget {
  const VersionNoWidget({
    Key? key,
    required this.symenticName,
    required this.versionNo,
  }) : super(key: key);

  final String symenticName;
  final int versionNo;

  @override
  State<VersionNoWidget> createState() => _VersionNoWidgetState();
}

class _VersionNoWidgetState extends State<VersionNoWidget> {
  late int _versionNo;
  final _items = List.generate(21, (int i) => i - 1);

  @override
  void initState() {
    super.initState();
    _versionNo = widget.versionNo != -1 ? widget.versionNo : 0;
  }

  @override
  Widget build(BuildContext context) {
    print(widget.versionNo);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(widget.symenticName),
        DropdownButton<int>(
          onChanged: (int? newValue) {
            if (newValue != null) {
              setState(() {
                _versionNo = newValue;
              });
            }
          },
          value: widget.versionNo,
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
