import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BottomSheetChildNormal extends ConsumerWidget {
  const BottomSheetChildNormal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      key: const ValueKey<String>("BTM-NORM"),
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "Ready to Scan",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey[600],
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        Expanded(
          // TODO: rive 애니메이션 넣기
          child: Container(),
        ),
        // Text(serialLoadedState.when(
        //     initial: initial,
        //     loading: loading,
        //     loaded: loaded,
        //     failure: failure)),
      ],
    );
  }
}
