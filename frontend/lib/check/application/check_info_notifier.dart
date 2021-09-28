import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/check/domain/check_info.dart';
import 'package:frontend/check/domain/check_info_failure.dart';
import 'package:frontend/check/infrastructure/check_info_repository.dart';

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

  CheckInfoStateNotifier(
    this._repository,
  ) : super(CheckInfoState.initial("", CheckInfo.empty()));

  Future<void> getCheckInfo(
      String tagId, String interval, String session, String token) async {
    state = CheckInfoState.loading(
        tagId,
        state.info.copyWith.header(
          interval: interval,
          session: session,
        ));

    final failureOrSuccess =
        await _repository.getCheckInfo(tagId, interval, session, token);

    state = failureOrSuccess.fold(
      (failure) => CheckInfoState.failure(tagId, state.info, failure),
      (success) => CheckInfoState.loaded(tagId, success.entity),
    );
  }

  void clear() {
    state = CheckInfoState.initial("", CheckInfo.empty());
  }

  Future<void> saveCheckInfo(
      Map<String, dynamic> params, List<CheckImage> images) async {
    state = CheckInfoState.saving(state.tagId, state.info);

    final failureOrSuccess = await _repository.saveCheckInfo(params, images);
    state = failureOrSuccess.fold(
      (failure) => CheckInfoState.failure(state.tagId, state.info, failure),
      (success) => CheckInfoState.saved(state.tagId, state.info),
    );
  }
}

class CheckHeaderNotifier extends StateNotifier<CheckHeader> {
  CheckHeaderNotifier(CheckHeader header) : super(header);

  void setSession(String session) {
    state = state.copyWith(
      session: session,
    );
  }

  void setInterval(String interval) {
    state = state.copyWith(
      interval: interval,
    );
  }
}

class CheckDetailsNotifier extends StateNotifier<List<CheckDetails>> {
  CheckDetailsNotifier(List<CheckDetails> details, this._picker)
      : super(details);

  final ImagePicker _picker;

  void setCheckResult(int index, String result) {
    state = state.mapIndexed((detailIdx, detail) {
      if (index == detailIdx) {
        return state[index].copyWith(
          result: result,
        );
      } else {
        return detail;
      }
    }).toList();
  }

  void setCheckRemark(int index, String remark) {
    state = state.mapIndexed((detailIdx, detail) {
      if (index == detailIdx) {
        return state[index].copyWith(
          remark: remark,
        );
      } else {
        return detail;
      }
    }).toList();
  }

  Future<void> pickImagesFromGallery(int index, String chklistNo) async {
    final images = await _picker.pickMultiImage();
    if (images != null) {
      state = state.mapIndexed((detailIdx, detail) {
        if (detailIdx == index) {
          return detail.copyWith(
            images: images.mapIndexed((imageIdx, image) {
              final chkItemCd = detail.chkItemCd.replaceAll("_", "");
              final imageNo = imageIdx + 1;
              final fileNameExt = image.name.split(".").last;

              return CheckImage(
                name: "$chklistNo$chkItemCd$imageNo.$fileNameExt",
                image: image,
              );
            }).toList(),
          );
        } else {
          return detail;
        }
      }).toList();
    }
  }

  Future<void> pickImageFromCamera(int index, String chklistNo) async {
    final image = await _picker.pickImage(source: ImageSource.camera);
    if (image != null) {
      state = state.mapIndexed((detailIdx, detail) {
        if (detailIdx == index) {
          final chkItemCd = detail.chkItemCd.replaceAll("_", "");

          final fileNameExt = image.name.split(".").last;
          return detail.copyWith(
            images: [
              CheckImage(
                name: "$chklistNo${chkItemCd}1.$fileNameExt",
                image: image,
              )
            ],
          );
        } else {
          return detail;
        }
      }).toList();
    }
  }

  void clearDetailsImages(int index) {
    state = state.mapIndexed((detailIndex, detail) {
      if (detailIndex == index) {
        return detail..images.clear();
      } else {
        return detail;
      }
    }).toList();
  }
}
