import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:web/provider.dart';

/// 마지막 버전 정보를 보여주는 Widget
class LatestInfoWidget extends ConsumerWidget {
  const LatestInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _version = ref.watch(
      appVersionStateNotifierProvider.select((state) => state.version),
    );

    return Text.rich(
      TextSpan(
        text: "Latest Version: ",
        children: [
          TextSpan(
            text: _version.lastVersionNo.toString(),
            style: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w200,
      ),
    );
  }
}
