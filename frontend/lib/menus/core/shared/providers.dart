import 'package:frontend/menus/core/application/menu_state_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final menuNotifierProvider =
    StateNotifierProvider.autoDispose<MenuStateNotifier, MenuState>(
  (ref) => MenuStateNotifier(),
);
