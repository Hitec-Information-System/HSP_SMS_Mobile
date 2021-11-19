import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/auth/domain/user.dart';
import 'package:frontend/core/domain/added_image.dart';
import 'package:frontend/core/presentation/constants/constants.dart';
import 'package:frontend/menus/home/domain/board.dart';
import 'package:frontend/menus/home/infrastructure/board_repository.dart';
import 'package:frontend/menus/monitor/core/domain/check_monitor_failure.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';

part 'board_details_notifier.freezed.dart';

@freezed
class BoardDetailsState with _$BoardDetailsState {
  const BoardDetailsState._();
  const factory BoardDetailsState.initial(BoardItem item) = _Initial;
  const factory BoardDetailsState.saving(BoardItem item) = _Saving;
  const factory BoardDetailsState.saved(BoardItem item) = _Saved;
  const factory BoardDetailsState.failure(
      BoardItem item, CheckMonitorFailure failure) = _Failure;
}

class BoardDetailsStateNotifier extends StateNotifier<BoardDetailsState> {
  BoardDetailsStateNotifier(
    this._repository,
    this._picker, {
    required this.user,
    required this.boardFlag,
  }) : super(BoardDetailsState.initial(BoardItem.init()));

  final BoardItemRepository _repository;
  final ImagePicker _picker;
  final User user;
  final String boardFlag;

  Future<void> fetchBoardItemDetails(String key) async {
    final params = {
      "comp-cd": user.userInfo.compCd,
      "sys-flag": LogicConstants.systemFlag,
      "user": user.key,
      "board": boardFlag,
    };

    final failureOrSuccess =
        await _repository.fetchBoardItemDetails(params, path: key);

    state = failureOrSuccess.fold(
      (l) => BoardDetailsState.failure(state.item, l),
      (r) => BoardDetailsState.initial(r),
    );
  }

  Future<void> saveBoardItem(String title, String contents) async {
    state = BoardDetailsState.saving(state.item);

    final params = {
      "comp-cd": user.userInfo.compCd,
      "sys-flag": LogicConstants.systemFlag,
      "user": user.key,
      "board": boardFlag,
      "board-pk": "", // 없는 경우 DB에서 자동으로 생성함
      "board-title": title,
      "is-top-fixed": "N", // 기본값이 N 이므로 넣어줌
      "contents": contents,
      "remark": "", // remark 입력하는 부분이 없어서 빈값처리
      "xml-att": state.item.toImgXml,
    };

    final failureOrSuccess =
        await _repository.saveBoardItem(params, state.item.images);

    state = failureOrSuccess.fold(
      (l) => BoardDetailsState.failure(state.item, l),
      (r) => BoardDetailsState.saved(state.item),
    );
  }

  Future<void> pickImagesFromGallery() async {
    if (isOverImgCnt(
        currentCnt: state.item.images.length, interpolatedCnt: 1)) {
      evokeInternalFailure();
      return;
    }

    final images = await _picker.pickMultiImage();
    if (images != null) {
      if (isOverImgCnt(currentCnt: state.item.images.length + images.length)) {
        return evokeInternalFailure();
      }

      state = state.copyWith.item(
        images: state.item.images
          ..addAll(
            images
                .mapIndexed(
                  (index, file) => AddedImage(
                    key: "",
                    no: "",
                    name: file.name,
                    url: file.path,
                    remark: "",
                    isRemote: false,
                  ),
                )
                .toList(),
          ),
      );
    }
  }

  Future<void> pickImageFromCamera() async {
    if (isOverImgCnt(
        currentCnt: state.item.images.length, interpolatedCnt: 1)) {
      return evokeInternalFailure();
    }

    final file = await _picker.pickImage(source: ImageSource.camera);
    if (file != null) {
      if (isOverImgCnt(currentCnt: state.item.images.length + 1)) {
        return evokeInternalFailure();
      }

      state = state.copyWith.item(
        images: state.item.images
          ..add(
            AddedImage(
              key: "",
              no: "",
              name: file.name,
              url: file.path,
              remark: "",
              isRemote: false,
            ),
          ),
      );
    }
  }

  void evokeInternalFailure() {
    state = BoardDetailsState.failure(
      state.item,
      const CheckMonitorFailure.internal(
          message: "한번에 이미지를 ${LogicConstants.maxImageCount} 개 이상 첨부할 수 없습니다."),
    );
  }

  bool isOverImgCnt({required int currentCnt, int interpolatedCnt = 0}) {
    if (currentCnt + interpolatedCnt > LogicConstants.maxImageCount) {
      return true;
    }
    return false;
  }

  void clearImages() {
    state = state.copyWith.item(
      images: [],
    );
  }
}
