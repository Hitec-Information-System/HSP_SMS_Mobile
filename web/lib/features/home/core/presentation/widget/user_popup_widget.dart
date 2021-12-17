import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:web/core/widgets/popup_menu_widget.dart';

part "user_popup_widget.freezed.dart";

class UserConfigPopupWidget extends AppPopupMenu {
  UserConfigPopupWidget({Key? key, required this.onStateSelected})
      : super(
          key: key,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          icon: const CircleAvatar(
            child: Icon(
              Icons.person,
            ),
          ),
        );

  final void Function(UserPopupState) onStateSelected;

  @override
  List<PopupMenuItem> get menuItems => [
        const PopupMenuItem(
          child: Text("Log out"),
          value: UserPopupState.signOut(),
        ),
      ];

  @override
  void onSelection(value) {
    final state = value as UserPopupState;
    onStateSelected.call(state);
  }
}

@freezed
class UserPopupState with _$UserPopupState {
  const UserPopupState._();
  const factory UserPopupState.notSelected() = _NotSelected;
  const factory UserPopupState.signOut() = _SignOut;
}
