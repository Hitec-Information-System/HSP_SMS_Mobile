import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/auth/domain/user.dart';
import 'package:frontend/core/presentation/constants/constants.dart';
import 'package:frontend/menus/home/domain/board.dart';
import 'package:frontend/menus/home/infrastructure/board_repository.dart';
import 'package:frontend/menus/monitor/core/domain/check_monitor_failure.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'board_notifier.freezed.dart';

// 아이템 조회 기본 갯수
const _itemCount = 5;

@freezed
class BoardState with _$BoardState {
  const BoardState._();
  const factory BoardState.initial() = _Initial;
  const factory BoardState.loading() = _Loading;
  const factory BoardState.loaded(Board data) = _Loaded;
  const factory BoardState.failure(CheckMonitorFailure failure) = _Failure;
  const factory BoardState.edited() = _Edited;
}

class BoardStateNotifier extends StateNotifier<BoardState> {
  BoardStateNotifier(
    this._repository, {
    required this.user,
    required this.boardFlag,
  }) : super(const BoardState.initial());

  final BoardItemRepository _repository;
  final User user;
  final String boardFlag;

  Future<void> getBoard() async {
    state = const BoardState.loading();

    final params = {
      "comp-cd": user.userInfo.compCd,
      "sys-flag": LogicConstants.systemFlag,
      "user": user.key,
      "board": boardFlag,
      "count": _itemCount,
    };

    final failureOrSuccess = await _repository.fetchBoardItemsList(params);
    state = failureOrSuccess.fold(
      (l) => BoardState.failure(l),
      (r) => BoardState.loaded(r),
    );
  }

  void switchToEditedState() {
    state = const BoardState.edited();
  }
}
