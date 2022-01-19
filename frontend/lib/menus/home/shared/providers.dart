import 'package:frontend/auth/domain/user.dart';
import 'package:frontend/core/shared/providers.dart';
import 'package:frontend/menus/home/application/board_details_notifier.dart';
import 'package:frontend/menus/home/application/board_notifier.dart';
import 'package:frontend/menus/home/infrastructure/board_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

const noticeFlag = "NOTICE";
const safetyFlag = "SAFETY_OFFER";

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
    boardFlag: noticeFlag,
  ),
);

// 안전 제보
final safetyBoardItemDetailsStateNotifierProvider = StateNotifierProvider
    .autoDispose<BoardDetailsStateNotifier, BoardDetailsState>(
  (ref) => BoardDetailsStateNotifier(
    ref.watch(boardItemRepositoryProvider),
    ref.watch(imagePickerProvider),
    user: ref.watch(
      userProvider.select((value) => value ?? User.empty()),
    ),
    boardFlag: safetyFlag,
  ),
);

// 게시판
final noticeBoardItemDetailsStateNotifierProvider = StateNotifierProvider
    .autoDispose<BoardDetailsStateNotifier, BoardDetailsState>(
  (ref) => BoardDetailsStateNotifier(
    ref.watch(boardItemRepositoryProvider),
    ref.watch(imagePickerProvider),
    user: ref.watch(
      userProvider.select((value) => value ?? User.empty()),
    ),
    boardFlag: noticeFlag,
  ),
);
