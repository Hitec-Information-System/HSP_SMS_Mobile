import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/auth/shared/providers.dart';
import 'package:frontend/check/application/check_info_notifier.dart';
import 'package:frontend/check/shared/providers.dart';

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
    print("main page built");

    final _controller = useAnimationController(
      duration: const Duration(
        milliseconds: 100,
      ),
    );

    final rive = useTagRecognizerRiveController();

    ref.listen<TagState>(
      tagNotifierProvider,
      (state) {
        state.when(
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
            ).then((_) {
              _controller.reverse();
              rive.isComplete?.value = false;
            });
          },
          qrReading: () {
            AutoRouter.of(context).push(const QRScanRoute());
          },
          nfcRead: (tag) {
            _controller.forward();
            rive.isComplete?.value = true;

            log(tag.id);

            ref
                .read(checkInfoStateNotifierProvider.notifier)
                .getCheckInfo(tag.id, "일상");
          },
          qrRead: (tag) {
            showModalBottomSheet(
              backgroundColor: Colors.transparent,
              context: context,
              builder: (context) {
                return TagBottomSheet(
                  controller: _controller,
                  artboard: rive.artboard!,
                );
              },
            ).then((_) {
              _controller.reverse();
              rive.isComplete?.value = false;
            });

            _controller.forward();
            rive.isComplete?.value = true;

            ref
                .watch(checkInfoStateNotifierProvider.notifier)
                .getCheckInfo(tag.id, "일상");
          },
          failure: (failure) {
            // TODO: 문제 발생했을 때 Dialog 보여주기
          },
        );
      },
    );

    ref.listen<CheckInfoState>(checkInfoStateNotifierProvider, (state) {
      state.maybeWhen(
        initial: (_, __) {
          AutoRouter.of(context).popUntilRouteWithName(MenuFrameRoute.name);
        },
        loaded: (_, __) {
          AutoRouter.of(context).push(const CheckListRoute()).then((_) {
            ref.read(tagNotifierProvider.notifier).clear();
            // ref.read(checkInfoStateNotifierProvider.notifier).clear();
          });
        },
        failure: (_, __, ___) async {
          ref.read(tagNotifierProvider.notifier).clear();
          // ref.read(checkInfoStateNotifierProvider.notifier).clear();
        },
        orElse: () {},
      );
    });

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
            children: const [
              Text(
                // AppLocalizations.of(context)?.translate('first_string') ?? "",
                "현재 등록화면 이동만 가능합니다",
                style: TextStyle(fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        floatingActionButton: const MainFAB());
  }
}
