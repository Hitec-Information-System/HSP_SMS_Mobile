import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:rive/rive.dart';

// tag rive animation controller;

Map<String, dynamic> useTagRecognizerRiveController() {
  return use(const _RiveTagRecognizerHook());
}

class _RiveTagRecognizerHook extends Hook<Map<String, dynamic>> {
  const _RiveTagRecognizerHook();

  @override
  __RiveTagRecognizerControllerState createState() =>
      __RiveTagRecognizerControllerState();
}

class __RiveTagRecognizerControllerState
    extends HookState<Map<String, dynamic>, _RiveTagRecognizerHook> {
  final riveFileName = "assets/animation/tagStateMachine.riv";

  Artboard? riveArtboard;
  SMIInput<bool>? isCompleteFlag;

  @override
  void initHook() {
    rootBundle.load(riveFileName).then((data) {
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
    });
    super.initHook();
  }

  @override
  Map<String, dynamic> build(BuildContext context) {
    return {
      "artboard": riveArtboard,
      "flag": isCompleteFlag,
    };
  }

  @override
  void dispose() {
    isCompleteFlag?.controller.dispose();
    super.dispose();
  }
}
