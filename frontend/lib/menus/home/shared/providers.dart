import 'package:frontend/auth/domain/user.dart';
import 'package:frontend/core/shared/providers.dart';
import 'package:frontend/menus/home/application/board_notifier.dart';
import 'package:frontend/menus/home/application/board_register_notifier.dart';
import 'package:frontend/menus/home/infrastructure/board_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

const _noticeFlag = "NOTICE";
const _safetyFlag = "SAFETY_OFFER";

final boardItemRepositoryProvider = Provider.autoDispose<BoardItemRepository>(
  (ref) => BoardItemRepository(
    ref.watch(dioProvider),
  ),
);

// 공지 게시판
final boardStateNotifierProvider =
    StateNotifierProvider.autoDispose<BoardStateNotifier, BoardState>(
  (ref) => BoardStateNotifier(
    ref.watch(boardItemRepositoryProvider),
    user: ref.watch(
      userProvider.select((value) => value ?? User.empty()),
    ),
    boardFlag: _noticeFlag,
  ),
);

// 안전 신고 등록
final safetyBoardItemRegisterStateNotifierProvider = StateNotifierProvider
    .autoDispose<BoardRegisterStateNotifier, BoardRegisterState>(
  (ref) => BoardRegisterStateNotifier(
    ref.watch(boardItemRepositoryProvider),
    ref.watch(imagePickerProvider),
    user: ref.watch(
      userProvider.select((value) => value ?? User.empty()),
    ),
    boardFlag: _safetyFlag,
  ),
);
