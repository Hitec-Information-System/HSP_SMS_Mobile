import 'package:hooks_riverpod/hooks_riverpod.dart';

enum MenuState {
  main,
  facility,
  line,
  forklift,
  settings,
}

class MenuStateNotifier extends StateNotifier<MenuState> {
  MenuStateNotifier() : super(MenuState.main);

  void changeCurrentPage(int index) {
    state = MenuState.values[index];
  }
}
