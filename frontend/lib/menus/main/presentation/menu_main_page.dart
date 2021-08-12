import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/check/check_serial/shared/providers.dart';
import 'package:frontend/core/application/localization/app_localizations.dart';
import 'package:frontend/core/presentation/routes/app_router.gr.dart';
import 'package:frontend/core/presentation/widgets.dart';
import 'package:frontend/core/shared/hooks/rive/tag_recognizer_controller.dart';
import 'package:frontend/menus/main/presentation/widgets/child_bottom_sheet_fail.dart';
import 'package:frontend/menus/main/presentation/widgets/child_bottom_sheet_normal.dart';
import 'package:frontend/menus/main/presentation/widgets/widgets.dart';
import 'package:frontend/tag/core/application/tag_notifier.dart';
import 'package:frontend/tag/core/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rive/rive.dart';

class MenuMainPage extends HookConsumerWidget {
  const MenuMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final serialLoadedState = ref.watch(checkSerialNotifierProvider);

    final _controller = useAnimationController(
      duration: const Duration(
        milliseconds: 100,
      ),
    );

    final _canvasSize = Tween<double>(
      begin: MediaQuery.of(context).size.height / 2,
      end: MediaQuery.of(context).size.height / 3,
    ).animate(_controller);

    final riveBundle = useTagRecognizerRiveController();

    final bottomSheetIndex = useState<int>(0);

    final _bottomWidgets = [
      BottomSheetChildNormal(),
      BottomSheetChildFail(),
    ];

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
                builder: (context) {
                  return BottomSheetWidget(
                    controller: _controller,
                    animation: _canvasSize,
                    widget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 5,
                          width: 35,
                          decoration: BoxDecoration(
                              color: Theme.of(context).hintColor,
                              borderRadius: BorderRadius.circular(2)),
                        ),
                        const SizedBox(height: 20),
                        Expanded(child: Container()),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2,
                          child: Rive(
                            useArtboardSize: true,
                            fit: BoxFit.fitWidth,
                            artboard: riveBundle["artboard"] as Artboard,
                          ),
                        ),
                      ],
                    ),
                  );
                }).then(
              (_) {
                ref.read(tagNotifierProvider.notifier).stopNFCSession();
              },
            );
          },
          qrReading: () {
            AutoRouter.of(context).push(const QRScanRoute());
          },
          nfcRead: (tag) {
            bottomSheetIndex.value = 1;

            // activate animation
            _controller.forward();

            // activate rive animation
            (riveBundle["flag"] as SMIInput<bool>?)?.value = true;

            ref
                .watch(checkSerialNotifierProvider.notifier)
                .getFakeInfo(tag.id)
                .then(
              (_) {
                AutoRouter.of(context)
                    .popUntilRouteWithName(MenuFrameRoute.name);

                AutoRouter.of(context).push(const CheckListRoute()).then((_) {
                  _controller.reverse();
                  (riveBundle["flag"] as SMIInput<bool>?)?.value = false;
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
                return BottomSheetWidget(
                    controller: _controller,
                    animation: _canvasSize,
                    widget: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: Rive(
                            artboard: riveBundle["artboard"] as Artboard,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        Text(
                          serialLoadedState.when(
                            initial: () => "",
                            loading: () => "",
                            loaded: (serial) => serial.location,
                            failure: (failure) => failure.when(
                              notFound: () => "찾을수 없음",
                              serverError: (msg) => "서버 에러 발생: $msg",
                            ),
                          ),
                        ),
                      ],
                    ));
              },
            );

            _controller.forward();

            // activate rive animation
            (riveBundle["flag"] as SMIInput<bool>?)?.value = true;

            ref
                .watch(checkSerialNotifierProvider.notifier)
                .getFakeInfo(tag.id)
                .then((value) {
              AutoRouter.of(context).popUntilRouteWithName(MenuFrameRoute.name);

              AutoRouter.of(context).push(const CheckListRoute()).then((_) {
                _controller.reverse();
                (riveBundle["flag"] as SMIInput<bool>?)?.value = false;
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
            const Divider(),
            Expanded(
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 200),
                child: _bottomWidgets[bottomSheetIndex.value],
              ),
            ),
            TextButton(
              onPressed: () {
                bottomSheetIndex.value = 1;
              },
              child: Text("Click"),
            )
          ],
        )),
        floatingActionButton: const MainFAB());
  }
}
