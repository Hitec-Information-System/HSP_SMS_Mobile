import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/check/check_info/domain/check_info.dart';
import 'package:frontend/check/check_info/domain/check_info_failure.dart';
import 'package:frontend/check/check_info/infrastructure/check_info_repository.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

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

  void setCheckInfo(CheckInfo info) {
    state = state.maybeWhen(
      loaded: (tagId, data) => CheckInfoState.loaded(tagId, info),
      orElse: () => CheckInfoState.initial(state.tagId, state.info),
    );
  }

  Future<void> pickImages(int index) async {
    final images = await _picker.pickMultiImage();
    if (images != null) {
      state = state.maybeWhen(
        loaded: (tagId, data) => CheckInfoState.loaded(
            tagId,
            state.info.copyWith(
                details: state.info.details.mapIndexed((detailIdx, detail) {
              if (detailIdx == index) {
                return detail.copyWith(
                  images: images.map((image) {
                    final newImg = XFile(
                      image.path,
                      name:
                          "${DateFormat("yyyyMMddHmmss").format(DateTime.now())}${data.header.chasu}${detail.chkItemCd}",
                    );
                    return newImg;
                  }).toList(),
                );
              } else {
                return detail;
              }
            }).toList())),
        orElse: () => CheckInfoState.initial(state.tagId, state.info),
      );
    }
  }

  void setCheckHeaderChasu(String chasu) {
    state = state.maybeWhen(
      loaded: (tagId, data) => CheckInfoState.loaded(
        tagId,
        state.info.copyWith.header(
          chasu: chasu,
        ),
      ),
      orElse: () => CheckInfoState.initial(state.tagId, state.info),
    );
  }

  void clear() {
    state = CheckInfoState.initial("", CheckInfo.empty());
  }

  Future<void> saveCheckInfo(
      Map<String, dynamic> params, List<XFile> images) async {
    state = CheckInfoState.loading(state.tagId, state.info);

    final failureOrSuccess = await _repository.saveCheckInfo(params, images);
    state = failureOrSuccess.fold(
      (failure) => CheckInfoState.failure(state.tagId, state.info, failure),
      (success) => CheckInfoState.loaded(state.tagId, state.info),
    );
  }
}
