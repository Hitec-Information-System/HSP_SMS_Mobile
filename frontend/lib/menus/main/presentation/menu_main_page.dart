import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/check/check_serial/shared/providers.dart';
import 'package:frontend/core/application/localization/app_localizations.dart';
import 'package:frontend/core/presentation/routes/app_router.gr.dart';
import 'package:frontend/core/presentation/widgets.dart';
import 'package:frontend/menus/main/presentation/main_fab.dart';
import 'package:frontend/tag/core/application/tag_notifier.dart';
import 'package:frontend/tag/core/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MenuMainPage extends HookConsumerWidget {
  const MenuMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tagState = ref.watch(tagNotifierProvider);

    final serialLoadedState = ref.watch(checkSerialNotifierProvider);

    final _controller =
        useAnimationController(duration: const Duration(milliseconds: 100));

    final _canvasSize =
        Tween<double>(begin: 300.0, end: 200.0).animate(_controller);

    ref.listen(
      tagNotifierProvider,
      (state) {
        (state! as TagState).when(
            initial: () => AutoRouter.of(context)
                .popUntilRouteWithName(MenuFrameRoute.name),
            nfcReading: () {
              showCustomBottomSheet(
                  context: context,
                  controller: _controller,
                  animation: _canvasSize,
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
                      child: Container(),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          AutoRouter.of(context).pop();
                        },
                        child: Text(
                          "Cancel",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                  ]).then((_) {
                ref.read(tagNotifierProvider.notifier).stopNFCSession();
              });
            },
            qrReading: () => AutoRouter.of(context).push(const QRScanRoute()),
            nfcRead: (tag) {
              // TODO: 태깅된 정보 보여주고 넘어갈 것인지 말 것인지 물어보기

              _controller.forward();

              ref
                  .watch(checkSerialNotifierProvider.notifier)
                  .getFakeInfo(tag.id)
                  .then(
                (_) {
                  AutoRouter.of(context)
                      .popUntilRouteWithName(MenuFrameRoute.name);
                  _controller.reverse();
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
              // TODO: 태깅된 정보 보여주고 넘어갈 것인지 말 것인지 물어보기
              ref
                  .watch(checkSerialNotifierProvider.notifier)
                  .getFakeInfo(tag.id);
              // TODO: 추후 데이터 설계 끝마쳐지고 난 후 아래 사용하기
              // ref
              //     .watch(checkSerialNotifierProvider.notifier)
              //     .getSerialInfo(tag.id);
            },
            failure: (failure) {
              // TODO: 문제 발생했을 때 Dialog 보여주기
            });
      },
    );

    return Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)?.translate('title') ?? ""),
          actions: [
            IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () {
                  AutoRouter.of(context).pushNamed('/settings');
                }),
            IconButton(
                icon: const Icon(Icons.logout_rounded),
                onPressed: () {
                  // TODO: DB 고쳐지면 활성화
                  // ref.watch(authNotifierProvider.notifier).signOut();
                })
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
            Text(tagState.map(
                initial: (_) => "initial",
                qrReading: (_) => "reading...",
                qrRead: (tagState) => tagState.tag.id,
                nfcRead: (tagState) => tagState.tag.id,
                nfcReading: (_) => "reading...",
                failure: (failState) => failState.failure.toString())),
            Text(serialLoadedState.when(
              initial: () => "not yet started",
              loading: () => "loading",
              loaded: (serial) => serial.location,
              failure: (failure) => failure.when(
                notFound: () => "찾을수 없음",
                serverError: (msg) => "서버 에러 발생: $msg",
              ),
            )),
          ],
        )),
        floatingActionButton: const MainFAB());
  }
}
