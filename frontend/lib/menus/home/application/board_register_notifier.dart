import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/auth/domain/user.dart';
import 'package:frontend/core/domain/added_image.dart';
import 'package:frontend/core/presentation/constants/constants.dart';
import 'package:frontend/menus/home/domain/board.dart';
import 'package:frontend/menus/home/infrastructure/board_repository.dart';
import 'package:frontend/menus/monitor/core/domain/check_monitor_failure.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';

part 'board_register_notifier.freezed.dart';

@freezed
class BoardRegisterState with _$BoardRegisterState {
  const BoardRegisterState._();
  const factory BoardRegisterState.initial(BoardItem item) = _Initial;
  const factory BoardRegisterState.saving(BoardItem item) = _Saving;
  const factory BoardRegisterState.saved(BoardItem item) = _Saved;
  const factory BoardRegisterState.failure(
      BoardItem item, CheckMonitorFailure failure) = _Failure;
}

class BoardRegisterStateNotifier extends StateNotifier<BoardRegisterState> {
  BoardRegisterStateNotifier(
    this._repository,
    this._picker, {
    required this.user,
    required this.boardFlag,
  }) : super(BoardRegisterState.initial(BoardItem.init()));

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
      (l) => BoardRegisterState.failure(state.item, l),
      (r) => BoardRegisterState.initial(r),
    );
  }

  Future<void> saveBoardItem(String title, String contents) async {
    state = BoardRegisterState.saving(state.item);

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
      (l) => BoardRegisterState.failure(state.item, l),
      (r) => BoardRegisterState.saved(state.item),
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
    state = BoardRegisterState.failure(
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

  void setTextToState(String title, String contents) {
    state = state.copyWith.item(
      title: title,
      contents: contents,
    );
  }
}
