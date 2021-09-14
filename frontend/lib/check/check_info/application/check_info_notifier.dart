import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/check/check_info/domain/check_info.dart';
import 'package:frontend/check/check_info/domain/check_info_failure.dart';
import 'package:frontend/check/check_info/infrastructure/check_info_repository.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'check_info_notifier.freezed.dart';

@freezed
class CheckInfoState with _$CheckInfoState {
  const CheckInfoState._();
  const factory CheckInfoState.initial(String tagId) = _CheckInfoStateInitial;
  const factory CheckInfoState.loading(String tagId) = _CheckInfoStateLoading;
  const factory CheckInfoState.loaded(String tagId, CheckInfo info) =
      _CheckInfoStateLoaded;
  const factory CheckInfoState.failure(String tagId, CheckInfoFailure failure) =
      _CheckInfoStateFailure;
}

class CheckInfoStateNotifier extends StateNotifier<CheckInfoState> {
  final CheckInfoRepository _repository;

  CheckInfoStateNotifier(
    this._repository,
  ) : super(const CheckInfoState.initial(""));

  Future<void> getCheckInfo(String tagId, String interval) async {
    state = CheckInfoState.loading(tagId);

    final failureOrSuccess = await _repository.getCheckInfo(tagId, interval);

    state = failureOrSuccess.fold(
      (failure) => CheckInfoState.failure(state.tagId, failure),
      (success) => CheckInfoState.loaded(state.tagId, success.entity),
    );
  }

  void setCheckInfo(CheckInfo info) {
    state = state.maybeWhen(
      loaded: (tagId, data) => CheckInfoState.loaded(tagId, info),
      orElse: () => CheckInfoState.initial(state.tagId),
    );
  }

  void clear() {
    state = const CheckInfoState.initial("");
  }
}
