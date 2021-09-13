import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/check/check_info/domain/check_info.dart';
import 'package:frontend/check/check_info/domain/check_info_failure.dart';
import 'package:frontend/check/check_info/infrastructure/check_info_repository.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'check_info_notifier.freezed.dart';

@freezed
class CheckInfoState with _$CheckInfoState {
  const CheckInfoState._();
  const factory CheckInfoState.initial() = _CheckInfoStateInitial;
  const factory CheckInfoState.loading() = _CheckInfoStateLoading;
  const factory CheckInfoState.loaded(CheckInfo info) = _CheckInfoStateLoaded;
  const factory CheckInfoState.failure(CheckInfoFailure failure) =
      _CheckInfoStateFailure;
}

class CheckInfoStateNotifier extends StateNotifier<CheckInfoState> {
  final CheckInfoRepository _repository;

  CheckInfoStateNotifier(
    this._repository,
  ) : super(const CheckInfoState.initial());

  Future<void> getCheckInfo(String tagId) async {
    state = const CheckInfoState.loading();

    final failureOrSuccess = await _repository.getCheckInfo(tagId);

    state = failureOrSuccess.fold(
      (failure) => CheckInfoState.failure(failure),
      (success) => CheckInfoState.loaded(success.entity),
    );
  }

  void setCheckInfo(CheckInfo info) {
    state = CheckInfoState.loaded(info);
  }

  void clear() {
    state = const CheckInfoState.initial();
  }
}
