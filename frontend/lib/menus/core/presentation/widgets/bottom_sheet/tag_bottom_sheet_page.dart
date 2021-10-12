import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:frontend/check/application/check_info_notifier.dart';
import 'package:frontend/core/presentation/widgets/dialogs.dart';
import 'package:frontend/tag/core/application/tag_notifier.dart';
import 'package:frontend/tag/core/domain/tag.dart';
import 'package:frontend/tag/core/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rive/rive.dart';

import 'package:frontend/check/shared/providers.dart';
import 'package:frontend/core/presentation/constants/constants.dart';
import 'package:frontend/core/presentation/routes/app_router.gr.dart';

class TagBottomSheetPage extends ConsumerStatefulWidget {
  const TagBottomSheetPage({
    Key? key,
    this.onInit,
    this.onDispose,
    this.onTagged,
    this.isTagged,
    required this.switchingChild,
  }) : super(key: key);

  final void Function()? onInit;
  final void Function()? onDispose;
  final void Function(Tag)? onTagged;

  final bool? isTagged;

  final Widget switchingChild;

  @override
  _TagBottomSheetPageState createState() => _TagBottomSheetPageState();
}

class _TagBottomSheetPageState extends ConsumerState<TagBottomSheetPage>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> _canvasSize;

  final riveFileName = "assets/animation/tagStateMachine.riv";

  Artboard? riveArtboard;
  SMIInput<bool>? isCompleteFlag;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100),
    );

    _canvasSize =
        Tween<double>(begin: 200, end: 150).animate(animationController);

    initRive();

    widget.onInit?.call();
  }

  Future<void> initRive() async {
    await rootBundle.load(riveFileName).then(
      (data) {
        final file = RiveFile.import(data);

        final artboard = file.mainArtboard;
        final controller =
            StateMachineController.fromArtboard(artboard, "tagStateMachine");

        if (controller != null) {
          artboard.addController(controller);
          isCompleteFlag = controller.findInput("isComplete");
          isCompleteFlag?.value = false;
        }

        setState(() => riveArtboard = artboard);

        if (widget.isTagged ?? false) {
          animationController.forward();
          isCompleteFlag?.value = true;
        }
      },
    );
  }

  @override
  void dispose() {
    isCompleteFlag?.controller.dispose();
    animationController.dispose();
    widget.onDispose?.call();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<TagState>(tagNotifierProvider, (state) {
      state.maybeWhen(
        initial: () {},
        nfcReading: () {},
        nfcRead: (tag) {
          animationController.forward();
          isCompleteFlag?.value = true;
          widget.onTagged?.call(tag);
        },
        failure: (failure) {
          // TODO: 에러 발생시
        },
        orElse: () {
          print("tagState orElse invoked!!!");
        },
      );
    });

    ref.listen<CheckInfoState>(checkInfoStateNotifierProvider, (state) {
      state.maybeWhen(
        loaded: (_, info) {
          Future.delayed(const Duration(milliseconds: 500)).then(
            (_) {
              AutoRouter.of(context).popUntilRouteWithName(MenuFrameRoute.name);

              AutoRouter.of(context).push(
                const CheckListRoute(),
              );
            },
          );
        },
        failure: (_, __, failure) async {
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
        orElse: () {
          print("checkState orElse invoked!!!");
        },
      );
    });

    return Material(
      color: Colors.transparent,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: 0,
            child: GestureDetector(
              onTap: () => AutoRouter.of(context)
                  .popUntilRouteWithName(MenuFrameRoute.name),
              child: Container(
                color: Colors.transparent,
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: AnimatedBuilder(
              animation: animationController,
              builder: (context, child) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: _canvasSize.value,
                      width: 300,
                      padding: const EdgeInsets.symmetric(
                        vertical: LayoutConstants.paddingM,
                        horizontal: LayoutConstants.paddingXL,
                      ),
                      margin: const EdgeInsets.symmetric(
                          vertical: LayoutConstants.paddingL),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(LayoutConstants.radiusXL),
                        color: Theme.of(context).primaryColor,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 20),
                          const Spacer(),
                          AnimatedSwitcher(
                            duration: const Duration(milliseconds: 300),
                            transitionBuilder:
                                (Widget child, Animation<double> animation) {
                              return SlideTransition(
                                position: Tween<Offset>(
                                        begin: const Offset(0, .5),
                                        end: const Offset(0, 0))
                                    .animate(
                                  CurvedAnimation(
                                      parent: animation, curve: Curves.ease),
                                ),
                                child: FadeTransition(
                                  opacity: animation,
                                  child: child,
                                ),
                              );
                            },
                            child: widget.switchingChild,
                          ),
                          const Spacer(),
                          SizedBox(
                            width: 180,
                            child: riveArtboard != null
                                ? Rive(
                                    useArtboardSize: true,
                                    fit: BoxFit.fitWidth,
                                    artboard: riveArtboard!,
                                  )
                                : const SizedBox(),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
