import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:frontend/check/check_serial/shared/providers.dart';
import 'package:frontend/core/presentation/routes/app_router.gr.dart';
import 'package:frontend/core/presentation/widgets/widgets.dart';
import 'package:frontend/menus/main/presentation/widgets/bottom_sheet/child_initial.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:rive/rive.dart';

class TagBottomSheet extends ConsumerWidget {
  const TagBottomSheet({
    Key? key,
    required this.controller,
    required this.artboard,
  }) : super(key: key);

  final AnimationController controller;

  final Artboard artboard;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final serialLoadedState = ref.watch(checkSerialNotifierProvider);

    final _canvasSize = Tween<double>(
      begin: MediaQuery.of(context).size.height / 3,
      end: MediaQuery.of(context).size.height / 4,
    ).animate(controller);

    return AnimatedBuilder(
        animation: controller,
        builder: (context, child) {
          return Container(
            height: _canvasSize.value,
            margin: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Theme.of(context).primaryColor,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 5,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Theme.of(context).hintColor,
                      borderRadius: BorderRadius.circular(2)),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                    transitionBuilder:
                        (Widget child, Animation<double> animation) {
                      return SlideTransition(
                        position: Tween<Offset>(
                                begin: const Offset(0, 1),
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
                    child: serialLoadedState.when(
                      initial: () => const BottomSheetChildInitial(),
                      loading: () => Container(
                        key: ValueKey<String>("loading"),
                        child: Text("loading"),
                      ),
                      loaded: (serial) => Container(
                        key: ValueKey<String>("loaded"),
                        child: Text("${serial.location}"),
                      ),
                      failure: (failure) => Container(
                        key: ValueKey<String>("failure"),
                        child: Text("fail"),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Rive(
                    useArtboardSize: true,
                    fit: BoxFit.fitWidth,
                    artboard: artboard,
                  ),
                ),
              ],
            ),
          );
        });
  }
}
