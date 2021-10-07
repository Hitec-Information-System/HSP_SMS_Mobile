import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/auth/shared/providers.dart';
import 'package:frontend/check/application/check_info_notifier.dart';
import 'package:frontend/check/shared/providers.dart';
import 'package:frontend/core/presentation/widgets/dialogs.dart';
import 'package:frontend/core/shared/hooks/rive/tag_recognizer_controller.dart';
import 'package:frontend/menus/core/presentation/menu_nav_bar.dart';
import 'package:frontend/menus/core/presentation/widgets/widgets.dart';
import 'package:frontend/tag/core/application/tag_notifier.dart';
import 'package:frontend/tag/core/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:frontend/core/presentation/routes/app_router.gr.dart';

const _hardCodedRoutes = [
  BuildingTab(
    children: [
      MenuBuildingRoute(),
    ],
  ),
  LineTab(
    children: [
      MenuLineRoute(),
    ],
  ),
  ForkliftTab(
    children: [
      MenuForkLiftRoute(),
    ],
  ),
  SettingsTab(
    children: [
      MenuSettingsRoute(),
    ],
  ),
];

class MenuFramePage extends HookConsumerWidget {
  const MenuFramePage({Key? key}) : super(key: key);

  // @override
  // void initState() {
  //   super.initState();
  //   // showAllowNotificationDialog(context);
  // }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print("main frame built");

    final rive = useTagRecognizerRiveController();
    final _controller =
        useAnimationController(duration: const Duration(milliseconds: 100));

    ref.listen<TagState>(
      tagNotifierProvider,
      (state) {
        state.when(
          initial: () {
            AutoRouter.of(context).popUntilRouteWithName(MenuFrameRoute.name);
          },
          nfcReading: () {
            ref.read(checkInfoStateNotifierProvider.notifier).clear();

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
            ref.read(checkInfoStateNotifierProvider.notifier).clear();

            AutoRouter.of(context).push(const QRScanRoute());
          },
          nfcRead: (tag) {
            _controller.forward();
            rive.isComplete?.value = true;

            ref
                .read(checkInfoStateNotifierProvider.notifier)
                .getCheckInfo(tag.id, "", "");
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
                .read(checkInfoStateNotifierProvider.notifier)
                .getCheckInfo(tag.id, "", "");
          },
          failure: (failure) {
            // TODO: 문제 발생했을 때 Dialog 보여주기
          },
        );
      },
    );

    // FIXME: 점검 페이지로 이동한 경우,
    //        Navigator에 페이지가 Stack 되어 있는 상태로 쌓여있기 때문에 union state 가 바뀌는 것에 지속적으로 영향을 받음
    //        점검 페이지 안에 watch 혹은 StateNotifier로 부터 파생한 provider들이 있기 때문에 화면이 여러번 그려지는 오류가 있음

    ref.listen<CheckInfoState>(
        checkInfoStateNotifierProvider.select((value) => value), (state) {
      state.maybeWhen(
        initial: (_, __) {
          AutoRouter.of(context).popUntilRouteWithName(MenuFrameRoute.name);
        },
        loading: (_, __) {
          Dialogs.showLoadingDialog(context);
        },
        loaded: (_, info) async {
          await Future.delayed(const Duration(milliseconds: 1000));

          AutoRouter.of(context)
              .pushAndPopUntil(
                  CheckListRoute(
                    info: info,
                  ),
                  predicate: (route) => false)
              .then((_) {
            AutoRouter.of(context).push(const MenuFrameRoute());
            ref.read(tagNotifierProvider.notifier).clear();
          });
        },
        saving: (_, __) {
          Dialogs.showLoadingDialog(context);
        },
        saved: (_, __) {
          Dialogs.showOneAnswerDialog(
            context,
            color: Theme.of(context).colorScheme.secondary,
            icon: Icons.check_circle,
            title: "저장 완료",
            message: "저장을 완료하였습니다",
            yesTitle: "확인",
            onYesPressed: () {},
            onDismissed: () {
              AutoRouter.of(context).popUntilRouteWithName(MenuFrameRoute.name);
            },
          );
        },
        failure: (_, __, failure) async {
          ref.read(tagNotifierProvider.notifier).clear();
          Dialogs.showOneAnswerDialog(
            context,
            color: Theme.of(context).errorColor,
            title: "오류",
            message:
                "오류가 발생하였습니다. 관리자에게 문의하여 주세요.\n오류는 다음과 같습니다.\n\n${failure.when(
              api: (code, message) => message,
              noConnection: () => "인터넷 연결 오류",
            )}\n",
            yesTitle: "확인",
            onYesPressed: () {},
            onDismissed: () {
              AutoRouter.of(context).popUntilRouteWithName(MenuFrameRoute.name);
            },
          );
        },
        orElse: () {},
      );
    });

    return AutoTabsRouter(
      routes: _hardCodedRoutes,
      builder: (context, child, animation) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          extendBody: true,
          body: child,
          bottomNavigationBar: BottomNavBar(
            currentIdx: tabsRouter.activeIndex,
            onTap: (index) => tabsRouter.setActiveIndex(index),
          ),
          floatingActionButton: const MainFAB(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
        );
      },
    );
  }
}
