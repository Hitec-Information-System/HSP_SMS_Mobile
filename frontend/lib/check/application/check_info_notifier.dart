import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/auth/domain/user.dart';

import 'package:frontend/check/domain/check_info.dart';
import 'package:frontend/check/domain/check_info_failure.dart';
import 'package:frontend/check/infrastructure/check_info_repository.dart';
import 'package:frontend/core/presentation/constants/constants.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';

part 'check_info_notifier.freezed.dart';

// REF : 한번에 첨부할 수 있는 이미지 수량 정하기
const IMG_ALLOWED_COUNT = 10;

@freezed
class CheckInfoState with _$CheckInfoState {
  const CheckInfoState._();
  const factory CheckInfoState.initial(String tagId, CheckInfo info) =
      _CheckInfoStateInitial;
  const factory CheckInfoState.loading(String tagId, CheckInfo info) =
      _CheckInfoStateLoading;
  const factory CheckInfoState.loaded(String tagId, CheckInfo info) =
      _CheckInfoStateLoaded;
  const factory CheckInfoState.saving(String tagId, CheckInfo info) =
      _CheckInfoStateSaving;
  const factory CheckInfoState.saved(String tagId, CheckInfo info) =
      _CheckInfoStateSaved;
  const factory CheckInfoState.failure(
          String tagId, CheckInfo info, CheckInfoFailure failure) =
      _CheckInfoStateFailure;
}

class CheckInfoStateNotifier extends StateNotifier<CheckInfoState> {
  final CheckInfoRepository _repository;

  final User user;
  final ImagePicker _picker;

  CheckInfoStateNotifier(
    this._repository,
    this._picker,
    this.user,
  ) : super(CheckInfoState.initial("", CheckInfo.empty()));

  Future<void> getCheckInfo({
    required String tagId,
    String interval = "",
    String session = "",
    int lastIndex = -1,
  }) async {
    state = CheckInfoState.loading(
      tagId,
      state.info.copyWith.header(
        interval: interval,
        session: session,
      ),
    );

    final params = {
      "check-no": tagId,
      "sys-flag": LogicConstants.systemFlag,
      "comp-cd": user.userInfo.compCd,
      "user": user.key,
      "interval": interval,
      "session": session,
      // obj-cd : 모바일에서 (혹은 2021-10-01 현재까지는) 사용하지 않아 빈 값 처리
      "obj-cd": ""
    };

    final failureOrSuccess = await _repository.getCheckInfo(params);

    state = failureOrSuccess.fold(
      (failure) => CheckInfoState.failure(tagId, state.info, failure),
      (success) => CheckInfoState.loaded(
          tagId,
          success.entity.copyWith(
            lastIndex: lastIndex,
          )),
    );
  }

  void clear() {
    state = CheckInfoState.initial("", CheckInfo.empty());
  }

  Future<void> saveCheckInfo() async {
    state = CheckInfoState.saving(state.tagId, state.info);

    final params = {
      "comp-cd": user.userInfo.compCd,
      "sys-flag": LogicConstants.systemFlag,
      "user-id": user.key,
      "xml-h": state.info.header.toHeaderXml,
      "xml-d": state.info.toResultsXml,
      "xml-i": state.info.toImgsXml,
    };

    final images = <CheckImage>[];
    for (final detail in state.info.details) {
      final unsavedImgs =
          detail.images.where((image) => !image.isRemote).toList();

      images.addAll(unsavedImgs);
    }

    final failureOrSuccess = await _repository.saveCheckInfo(params, images);
    state = failureOrSuccess.fold(
      (failure) => CheckInfoState.failure(state.tagId, state.info, failure),
      (success) => CheckInfoState.saved(state.tagId, state.info),
    );
  }

  void setCheckResult(String itemCd, String result) {
    state = CheckInfoState.loaded(
      state.tagId,
      state.info.copyWith(
        details: state.info.details.map((detail) {
          if (detail.chkItemCd == itemCd) {
            return detail.copyWith(
              result: result,
            );
          } else {
            return detail;
          }
        }).toList(),
      ),
    );
  }

  void setCheckRemark(String itemCd, String remark) {
    state = CheckInfoState.loaded(
      state.tagId,
      state.info.copyWith(
        details: state.info.details.map((detail) {
          if (detail.chkItemCd == itemCd) {
            return detail.copyWith(
              remark: remark,
            );
          } else {
            return detail;
          }
        }).toList(),
      ),
    );
  }

  Future<void> pickImagesFromGallery(String itemCd, String chklistNo) async {
    if (isOverImgCnt(
        currentCnt: state.info.totalImageCount, interpolatedCnt: 1)) {
      evokeInternalFailure();
      return;
    }

    final images = await _picker.pickMultiImage();
    if (images != null) {
      if (isOverImgCnt(
          currentCnt: state.info.totalImageCount + images.length)) {
        evokeInternalFailure();
        return;
      }

      state = CheckInfoState.loaded(
        state.tagId,
        state.info.copyWith(
          details: state.info.details.map((detail) {
            if (detail.chkItemCd == itemCd) {
              return detail.copyWith(
                  images: detail.images
                    ..addAll(
                      images.mapIndexed((imageIdx, file) {
                        final chkItemCd = detail.chkItemCd.replaceAll("_", "");
                        final imageNo = imageIdx + 1;
                        final fileNameExt = file.name.split(".").last;

                        return CheckImage(
                          name: "$chklistNo-$chkItemCd-$imageNo.$fileNameExt",
                          url: file.path,
                          remark: "",
                          isRemote: false,
                        );
                      }).toList(),
                    ));
            } else {
              return detail;
            }
          }).toList(),
        ),
      );
    }
  }

  Future<void> pickImageFromCamera(String itemCd, String chklistNo) async {
    if (isOverImgCnt(
        currentCnt: state.info.totalImageCount, interpolatedCnt: 1)) {
      evokeInternalFailure();
      return;
    }

    final file = await _picker.pickImage(source: ImageSource.camera);
    if (file != null) {
      if (isOverImgCnt(currentCnt: state.info.totalImageCount + 1)) {
        evokeInternalFailure();
        return;
      }

      state = CheckInfoState.loaded(
        state.tagId,
        state.info.copyWith(
          details: state.info.details.map((detail) {
            if (detail.chkItemCd == itemCd) {
              final chkItemCd = detail.chkItemCd.replaceAll("_", "");

              final fileNameExt = file.name.split(".").last;
              return detail.copyWith(
                  images: detail.images
                    ..add(
                      CheckImage(
                        name: "$chklistNo-$chkItemCd-1.$fileNameExt",
                        url: file.path,
                        remark: "",
                        isRemote: false,
                      ),
                    ));
            } else {
              return detail;
            }
          }).toList(),
        ),
      );
    }
  }

  void evokeInternalFailure() {
    state = CheckInfoState.failure(
      state.tagId,
      state.info,
      const CheckInfoFailure.internal(
          message: "한번에 이미지를 $IMG_ALLOWED_COUNT 개 이상 첨부할 수 없습니다."),
    );
  }

  bool isOverImgCnt({required int currentCnt, int interpolatedCnt = 0}) {
    if (currentCnt + interpolatedCnt > IMG_ALLOWED_COUNT) {
      return true;
    }
    return false;
  }

  void clearDetailsImages(String itemCd) {
    state = CheckInfoState.loaded(
      state.tagId,
      state.info.copyWith(
        details: state.info.details.map((detail) {
          if (detail.chkItemCd == itemCd) {
            return detail..images.clear();
          } else {
            return detail;
          }
        }).toList(),
      ),
    );
  }
}
