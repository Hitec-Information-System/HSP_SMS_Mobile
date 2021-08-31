import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/auth/shared/providers.dart';
import 'package:frontend/check/check_serial/shared/providers.dart';
import 'package:frontend/core/application/localization/app_localizations.dart';
import 'package:frontend/core/presentation/routes/app_router.gr.dart';
import 'package:frontend/core/shared/hooks/rive/tag_recognizer_controller.dart';
import 'package:frontend/menus/main/presentation/widgets/bottom_sheet/widgets.dart';
import 'package:frontend/menus/main/presentation/widgets/widgets.dart';
import 'package:frontend/tag/core/application/tag_notifier.dart';
import 'package:frontend/tag/core/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MenuMainPage extends HookConsumerWidget {
  const MenuMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _controller = useAnimationController(
      duration: const Duration(
        milliseconds: 100,
      ),
    );

    final rive = useTagRecognizerRiveController();

    ref.listen(
      tagNotifierProvider,
      (state) {
        (state! as TagState).when(
          initial: () {
            AutoRouter.of(context).popUntilRouteWithName(MenuFrameRoute.name);
          },
          nfcReading: () {
            showModalBottomSheet(
              backgroundColor: Colors.transparent,
              context: context,
              builder: (context) => TagBottomSheet(
                controller: _controller,
                artboard: rive.artboard!,
              ),
            );
          },
          qrReading: () {
            AutoRouter.of(context).push(const QRScanRoute());
          },
          nfcRead: (tag) {
            // activate animation
            _controller.forward();

            // activate rive animation
            rive.isComplete?.value = true;

            log(tag.id);

            ref
                .watch(checkSerialNotifierProvider.notifier)
                .getFakeInfo(tag.id)
                .then(
              (_) async {
                // TODO: 검토해보고 지우기
                await Future.delayed(const Duration(milliseconds: 3000), () {});

                AutoRouter.of(context)
                    .popUntilRouteWithName(MenuFrameRoute.name);

                AutoRouter.of(context).push(const CheckListRoute()).then((_) {
                  _controller.reverse();
                  rive.isComplete?.value = false;
                  ref.watch(tagNotifierProvider.notifier).clear();
                  ref.watch(checkSerialNotifierProvider.notifier).clear();
                });
              },
            );
            // TODO: 추후 데이터 설계 끝마쳐지고 난 후 아래 사용하기
            // ref
            //     .watch(checkSerialNotifierProvider.notifier)
            //     .getSerialInfo(tag.id);
            // AutoRouter.of(context).popUntilRouteWithName(MenuFrameRoute.name);
            // _controller.reverse();
          },
          qrRead: (tag) {
            AutoRouter.of(context).popUntilRouteWithName(MenuFrameRoute.name);

            showModalBottomSheet(
              context: context,
              builder: (context) {
                //
                return TagBottomSheet(
                  controller: _controller,
                  artboard: rive.artboard!,
                );
              },
            );

            _controller.forward();

            // activate rive animation
            rive.isComplete?.value = true;

            ref
                .watch(checkSerialNotifierProvider.notifier)
                .getFakeInfo(tag.id)
                .then((value) async {
              // TODO: 검토해보고 지우기
              await Future.delayed(const Duration(milliseconds: 3000), () {});

              AutoRouter.of(context).popUntilRouteWithName(MenuFrameRoute.name);

              AutoRouter.of(context).push(const CheckListRoute()).then((_) {
                _controller.reverse();
                rive.isComplete?.value = false;
                ref.watch(tagNotifierProvider.notifier).clear();
                ref.watch(checkSerialNotifierProvider.notifier).clear();
              });
            });
            // TODO: 추후 데이터 설계 끝마쳐지고 난 후 아래 사용하기
            // ref
            //     .watch(checkSerialNotifierProvider.notifier)
            //     .getSerialInfo(tag.id);
          },
          failure: (failure) {
            // TODO: 문제 발생했을 때 Dialog 보여주기
          },
        );
      },
    );

    return Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)?.translate('title') ?? ""),
          actions: [
            IconButton(
                icon: const Icon(Icons.logout_rounded),
                onPressed: () {
                  ref.watch(authNotifierProvider.notifier).signOut();
                }),
          ],
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppLocalizations.of(context)?.translate('first_string') ?? "",
              style: const TextStyle(fontSize: 25),
              textAlign: TextAlign.center,
            ),
          ],
        )),
        floatingActionButton: const MainFAB());
  }
}
