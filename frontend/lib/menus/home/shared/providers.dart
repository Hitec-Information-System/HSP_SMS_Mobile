import 'package:frontend/auth/domain/user.dart';
import 'package:frontend/core/shared/providers.dart';
import 'package:frontend/menus/home/application/board_items_notifier.dart';
import 'package:frontend/menus/home/infrastructure/board_items_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

const _noticeFlag = "NOTICE";
const _safetyFlag = "SAFETY_OFFER";

final boardItemRepositoryProvider = Provider<BoardItemRepository>(
  (ref) => BoardItemRepository(
    ref.watch(dioProvider),
  ),
);

final noticeBoardItemsStateNotifierProvider =
    StateNotifierProvider<BoardItemsStateNotifier, BoardItemsState>(
        (ref) => BoardItemsStateNotifier(ref.watch(boardItemRepositoryProvider),
            user: ref.watch(
              userProvider.select((value) => value ?? User.empty()),
            ),
            boardFlag: _noticeFlag));

final safetyBoardItemsStateNotifierProvider =
    StateNotifierProvider<BoardItemsStateNotifier, BoardItemsState>(
        (ref) => BoardItemsStateNotifier(ref.watch(boardItemRepositoryProvider),
            user: ref.watch(
              userProvider.select((value) => value ?? User.empty()),
            ),
            boardFlag: _safetyFlag));
