import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BottomSheetChildFail extends ConsumerWidget {
  const BottomSheetChildFail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      key: const ValueKey<String>("BTM-FAIL"),
      child: Column(
        children: [
          Text("해당하는 항목에 대한 조회결과가 없습니다."),
        ],
      ),
    );
  }
}
