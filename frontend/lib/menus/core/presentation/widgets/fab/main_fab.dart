import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/check/shared/providers.dart';
import 'package:frontend/core/presentation/widgets/widgets.dart';
import 'package:frontend/tag/core/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:frontend/core/presentation/routes/app_router.gr.dart';

class MainFAB extends HookConsumerWidget {
  const MainFAB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print("fab built");

    final isDialOpen = useState<bool>(false);

    return ExpandableFAB(
      icon: Icons.qr_code,
      activeIcon: Icons.close,
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      spacing: 3,
      openCloseDial: isDialOpen,
      overlayColor: Colors.black,
      overlayOpacity: .5,
      spaceBetweenChildren: 4,
      tooltip: "Tag Method",
      heroTag: "expandable_fab_hero_tag",
      elevation: 3.0,
      animationSpeed: 200,
      children: [
        ExpandableFABChild(
          child: const Icon(Icons.qr_code),
          label: "QR 태그",
          onTap: () => AutoRouter.of(context).push(
            QRScanRoute(
              onTagged: (tag) => ref
                  .read(checkInfoStateNotifierProvider.notifier)
                  .getCheckInfo(
                    tagId: tag.id,
                  ),
            ),
          ),
        ),
        ExpandableFABChild(
          child: const Icon(Icons.nfc),
          label: "NFC 태그",
          onTap: () => AutoRouter.of(context).push(
            TagBottomSheetRoute(
              onInit: () => ref.read(tagNotifierProvider.notifier).readNFCTag(),
              onDispose: () =>
                  ref.read(tagNotifierProvider.notifier).stopNFCSession(),
              onTagged: (tag) => ref
                  .read(checkInfoStateNotifierProvider.notifier)
                  .getCheckInfo(tagId: tag.id),
              switchingChild: Consumer(builder: (context, ref, child) {
                final checkInfoState =
                    ref.watch(checkInfoStateNotifierProvider);

                print("bottom sheet built");

                return checkInfoState.maybeWhen(
                  initial: (_, info) => Text(
                    "태그를 스캔하여 주세요",
                    key: const ValueKey<String>("BTM-SH-INIT"),
                    style: TextStyle(
                      color: Theme.of(context).hintColor,
                      fontSize: 20,
                    ),
                  ),
                  loading: (_, info) => Container(
                      key: const ValueKey<String>("loading"),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("정보를 확인하는 중입니다"),
                          AnimatedTextKit(
                            animatedTexts: [
                              TypewriterAnimatedText("..."),
                            ],
                          ),
                        ],
                      )),
                  loaded: (_, data) {
                    return Container(
                      key: const ValueKey<String>("loaded"),
                      // todo: 수정
                      child: Text.rich(TextSpan(children: <TextSpan>[
                        TextSpan(
                          text: data.header.objNm,
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        const TextSpan(text: " 검사로 이동합니다"),
                      ])),
                    );
                  },
                  failure: (_, info, failure) => Container(
                    key: const ValueKey<String>("failure"),
                    child: const Text("정보를 읽어오는데 실패하였습니다."),
                  ),
                  orElse: () => const SizedBox(),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}
