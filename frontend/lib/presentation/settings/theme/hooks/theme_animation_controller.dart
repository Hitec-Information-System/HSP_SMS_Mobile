import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/application/settings/theme/theme_bloc.dart';
import 'package:rive/rive.dart';

Artboard useThemeControllerForRive({required String fileName}) {
  return use(ThemeAnimationHook(riveFileName: fileName));
}

class ThemeAnimationHook extends Hook<Artboard> {
  final String riveFileName;

  const ThemeAnimationHook({required this.riveFileName});

  @override
  HookState<Artboard, Hook<Artboard>> createState() =>
      ThemeAnimationHookState();
}

class ThemeAnimationHookState extends HookState<Artboard, ThemeAnimationHook> {
  late Artboard _artboard;
  late StateMachineController _controller;
  late SMIInput<bool> _pressInput;
  late SMIInput<bool> _isDarkInput;

  @override
  void initHook() {
    rootBundle.load(hook.riveFileName).then((data) {
      // Load the RiveFile from the binary data.
      final file = RiveFile.import(data);

      // The artboard is the root of the animation and gets drawn in the Rive widget.
      final artboard = file.mainArtboard;
      final controller =
          StateMachineController.fromArtboard(artboard, 'theme_state');
      if (controller != null) {
        artboard.addController(controller);
        _pressInput = controller.findInput('onPressed')!;
        _isDarkInput = controller.findInput('isDarkMode')!;

        // 현재 theme 값 할당하기
        _isDarkInput.value = context.read<ThemeBloc>().state.theme.isDark;
      }
      _artboard = artboard;
    });
  }

  @override
  Artboard build(BuildContext context) => _artboard;

  @override
  void dispose() {
    super.dispose();
  }
}
