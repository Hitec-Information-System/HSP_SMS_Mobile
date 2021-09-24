import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/check/domain/check_info.dart';
import 'package:frontend/check/domain/check_info_failure.dart';
import 'package:frontend/check/infrastructure/check_info_repository.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';

part 'check_info_notifier.freezed.dart';

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
  final ImagePicker _picker;

  CheckInfoStateNotifier(
    this._repository,
    this._picker,
  ) : super(CheckInfoState.initial("", CheckInfo.empty()));

  Future<void> getCheckInfo(String tagId, String interval) async {
    state = CheckInfoState.loading(tagId, state.info);

    final failureOrSuccess = await _repository.getCheckInfo(tagId, interval);

    state = failureOrSuccess.fold(
      (failure) => CheckInfoState.failure(state.tagId, state.info, failure),
      (success) => CheckInfoState.loaded(state.tagId, success.entity),
    );
  }

  void setCheckChasu(String chasu) {
    state = state.copyWith.info.header(
      chasu: chasu,
    );
  }

  void setCheckInterval(String interval) {
    state = state.copyWith.info.header(
      interval: interval,
    );
  }

  void setCheckResult(int index, String result) {
    state = state.copyWith.info(
        details: state.info.details.mapIndexed((detailIdx, detail) {
      if (index == detailIdx) {
        return state.info.details[index].copyWith(
          result: result,
        );
      } else {
        return detail;
      }
    }).toList());
  }

  void setCheckRemark(int index, String remark) {
    state = state.copyWith.info(
        details: state.info.details.mapIndexed((detailIdx, detail) {
      if (index == detailIdx) {
        return state.info.details[index].copyWith(
          remark: remark,
        );
      } else {
        return detail;
      }
    }).toList());
  }

  Future<void> pickImages(int index) async {
    final images = await _picker.pickMultiImage();
    if (images != null) {
      state = state.copyWith.info(
        details: state.info.details.mapIndexed((detailIdx, detail) {
          if (detailIdx == index) {
            return detail.copyWith(
              images: images.mapIndexed((imageIdx, image) {
                // TODO: set image file name convention

                final chklistNo = state.info.header.id;
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
        }).toList(),
      );
    }
  }

  void setCheckHeaderChasu(String chasu) {
    state = state.copyWith.info.header(
      chasu: chasu,
    );
  }

  void clearDetailsImages(int index) {
    state = state.copyWith.info(
      details: state.info.details.mapIndexed((detailIndex, detail) {
        if (detailIndex == index) {
          return detail..images.clear();
        } else {
          return detail;
        }
      }).toList(),
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
