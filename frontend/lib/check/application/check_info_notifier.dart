import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/auth/domain/user.dart';

import 'package:frontend/check/domain/check_info.dart';
import 'package:frontend/check/domain/check_info_failure.dart';
import 'package:frontend/check/infrastructure/check_info_repository.dart';
import 'package:frontend/core/presentation/constants/constants.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';

part 'check_info_notifier.freezed.dart';

// TODO : 이미지 사진 찍는지 혹은 사진 목록에서 고르기 두 개 모두 선택하기

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

  CheckInfoStateNotifier(
    this._repository,
    this._picker,
    this.user,
  ) : super(CheckInfoState.initial("", CheckInfo.empty()));

  Future<void> getCheckInfo(
      String tagId, String interval, String session) async {
    state = CheckInfoState.loading(
        tagId,
        state.info.copyWith.header(
          interval: interval,
          session: session,
        ));

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
      (success) => CheckInfoState.loaded(tagId, success.entity),
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
      images.addAll(detail.images);
    }

    final failureOrSuccess = await _repository.saveCheckInfo(params, images);
    state = failureOrSuccess.fold(
      (failure) => CheckInfoState.failure(state.tagId, state.info, failure),
      (success) => CheckInfoState.saved(state.tagId, state.info),
    );
  }

  final ImagePicker _picker;

  void setCheckResult(String itemCd, String result) {
    state = state.copyWith.info(
      details: state.info.details.map((detail) {
        if (detail.chkItemCd == itemCd) {
          return detail.copyWith(
            result: result,
          );
        } else {
          return detail;
        }
      }).toList(),
    );
  }

  void setCheckRemark(String itemCd, String remark) {
    state = state.copyWith.info(
      details: state.info.details.map((detail) {
        if (detail.chkItemCd == itemCd) {
          return detail.copyWith(
            remark: remark,
          );
        } else {
          return detail;
        }
      }).toList(),
    );
  }

  Future<void> pickImagesFromGallery(String itemCd, String chklistNo) async {
    final images = await _picker.pickMultiImage();
    if (images != null) {
      state = state.copyWith.info(
        details: state.info.details.map((detail) {
          if (detail.chkItemCd == itemCd) {
            return detail.copyWith(
              images: images.mapIndexed((imageIdx, image) {
                final chkItemCd = detail.chkItemCd.replaceAll("_", "");
                final imageNo = imageIdx + 1;
                final fileNameExt = image.name.split(".").last;

                return CheckImage(
                  name: "$chklistNo-$chkItemCd-$imageNo.$fileNameExt",
                  image: image,
                );
              }).toList(),
            );
          } else {
            return detail;
          }
        }).toList(),
      );
    }
  }

  Future<void> pickImageFromCamera(String itemCd, String chklistNo) async {
    final image = await _picker.pickImage(source: ImageSource.camera);
    if (image != null) {
      state = state.copyWith.info(
        details: state.info.details.map((detail) {
          if (detail.chkItemCd == itemCd) {
            final chkItemCd = detail.chkItemCd.replaceAll("_", "");

            final fileNameExt = image.name.split(".").last;
            return detail.copyWith(
              images: [
                CheckImage(
                  name: "$chklistNo-$chkItemCd-1.$fileNameExt",
                  image: image,
                ),
              ],
            );
          } else {
            return detail;
          }
        }).toList(),
      );
    }
  }

  void clearDetailsImages(String itemCd) {
    state = state.copyWith.info(
      details: state.info.details.map((detail) {
        if (detail.chkItemCd == itemCd) {
          return detail..images.clear();
        } else {
          return detail;
        }
      }).toList(),
    );
  }
}
