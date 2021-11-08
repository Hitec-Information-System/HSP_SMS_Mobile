import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:frontend/auth/domain/user.dart';
import 'package:frontend/core/presentation/constants/constants.dart';
import 'package:frontend/menus/home/domain/board_item.dart';
import 'package:frontend/menus/home/infrastructure/board_items_repository.dart';
import 'package:frontend/menus/monitor/core/domain/check_monitor_failure.dart';

part 'board_items_notifier.freezed.dart';

// 아이템 조회 기본 갯수
const _itemCount = 5;

@freezed
class BoardItemsState with _$BoardItemsState {
  const BoardItemsState._();
  const factory BoardItemsState.initial() = _Initial;
  const factory BoardItemsState.loading() = _Loading;
  const factory BoardItemsState.loaded(List<BoardItem> data) = _Loaded;
  const factory BoardItemsState.failure(CheckMonitorFailure failure) = _Failure;
}

class BoardItemsStateNotifier extends StateNotifier<BoardItemsState> {
  BoardItemsStateNotifier(
    this._repository, {
    required this.user,
    required this.boardFlag,
  }) : super(const BoardItemsState.initial());

  final BoardItemRepository _repository;
  final User user;
  final String boardFlag;

  Future<void> getBoardList() async {
    state = const BoardItemsState.loading();

    final params = {
      "comp-cd": user.userInfo.compCd,
      "sys-flag": LogicConstants.systemFlag,
      "user": user.key,
      "board": boardFlag,
      "count": _itemCount,
    };

    final failureOrSuccess = await _repository.fetchBoardItemsList(params);
    state = failureOrSuccess.fold(
      (l) => BoardItemsState.failure(l),
      (r) => BoardItemsState.loaded(r),
    );
  }
}
