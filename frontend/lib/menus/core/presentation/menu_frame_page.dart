import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/check/application/check_info_notifier.dart';
import 'package:frontend/check/shared/providers.dart';
import 'package:frontend/core/presentation/widgets/dialogs.dart';
import 'package:frontend/core/shared/hooks/rive/tag_recognizer_controller.dart';
import 'package:frontend/core/shared/providers.dart';
import 'package:frontend/menus/core/presentation/menu_nav_bar.dart';
import 'package:frontend/menus/core/presentation/widgets/widgets.dart';
import 'package:frontend/menus/core/shared/providers.dart';
import 'package:frontend/menus/monitor/facility/presentation/menu_facility_inspection_page.dart';
import 'package:frontend/menus/monitor/forklift/presentation/menu_forklift_inspection_page.dart';
import 'package:frontend/menus/monitor/line/presentation/menu_line_inspection_page.dart';
import 'package:frontend/menus/settings/presentation/menu_settings_page.dart';
import 'package:frontend/tag/core/application/tag_notifier.dart';
import 'package:frontend/tag/core/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:frontend/core/presentation/routes/app_router.gr.dart';

const _pages = [
  MenuFacilityInspectionPage(),
  MenuLineInspectionPage(),
  MenuForkLiftInspectionPage(),
  MenuSettingsPage(),
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

    ref.listen<CheckInfoState>(checkInfoStateNotifierProvider, (state) {
      state.maybeWhen(
        initial: (_, __) {
          AutoRouter.of(context).popUntilRouteWithName(MenuFrameRoute.name);
        },
        loading: (_, __) {
          Dialogs.showLoadingDialog(context);
        },
        loaded: (_, __) async {
          await Future.delayed(const Duration(milliseconds: 1000));

          AutoRouter.of(context).push(const CheckListRoute()).then((_) {
            ref.read(tagNotifierProvider.notifier).clear();
          });
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
              api: (code) => code,
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

    return Scaffold(
      extendBody: true,
      body: Consumer(
        builder: (context, ref, child) {
          final menuState = ref.watch(menuNotifierProvider);
          return _pages[menuState.index];
        },
      ),
      bottomNavigationBar: const BottomNavBar(),
      floatingActionButton: const MainFAB(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );

    // Size _size = MediaQuery.of(context).size;

    // print(_size);

    // return Responsive(
    //   mobile: Container(
    //     color: Colors.red,
    //   ),
    //   tablet: Row(
    //     children: [
    //       Expanded(
    //         flex: 6,
    //         child: Container(
    //           color: Colors.amber,
    //         ),
    //       ),
    //       Expanded(
    //         flex: 9,
    //         child: Container(
    //           color: Colors.green,
    //         ),
    //       ),
    //     ],
    //   ),
    //   desktop: Row(
    //     children: [
    //       Expanded(
    //         flex: 4,
    //         child: Container(
    //           color: Colors.amber,
    //         ),
    //       ),
    //       Expanded(
    //         flex: 6,
    //         child: Container(
    //           color: Colors.amber,
    //         ),
    //       ),
    //       Expanded(
    //         flex: 9,
    //         child: Container(
    //           color: Colors.green,
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}
