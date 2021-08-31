import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:frontend/check/check_serial/shared/providers.dart';
import 'package:frontend/core/application/localization/app_localizations.dart';
import 'package:frontend/core/presentation/constants/constants.dart';
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

    final _canvasSize = Tween<double>(begin: 200, end: 150).animate(controller);

    return AnimatedBuilder(
        animation: controller,
        builder: (context, child) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: _canvasSize.value,
                width: 300,
                // margin: const EdgeInsets.only(left: 20, right: 20, bottom: 30),
                padding: const EdgeInsets.symmetric(
                  vertical: LayoutConstants.paddingM,
                  horizontal: LayoutConstants.paddingS,
                ),
                margin: const EdgeInsets.symmetric(
                    vertical: LayoutConstants.paddingL),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(LayoutConstants.radiusXL),
                  color: Theme.of(context).primaryColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 5,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Theme.of(context).hintColor,
                          borderRadius: BorderRadius.circular(2)),
                    ),
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
                      child: serialLoadedState.when(
                        initial: () => Text(
                          AppLocalizations.of(context)
                                  ?.translate('scan_ready') ??
                              "",
                          key: const ValueKey<String>("BTM-SH-INIT"),
                          style: TextStyle(
                            color: Theme.of(context).hintColor,
                            fontSize: 20,
                          ),
                        ),
                        loading: () => Container(
                            key: ValueKey<String>("loading"),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("정보를 확인하는 중입니다"),
                                AnimatedTextKit(
                                  animatedTexts: [
                                    TypewriterAnimatedText("..."),
                                  ],
                                ),
                              ],
                            )),
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
                    const Spacer(),
                    SizedBox(
                      width: 180,
                      child: Rive(
                        useArtboardSize: true,
                        fit: BoxFit.fitWidth,
                        artboard: artboard,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        });
  }
}
