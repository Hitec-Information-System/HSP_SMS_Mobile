import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/check/check_list/domain/check_failure.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:frontend/check/check_list/domain/check_standard.dart';
import 'package:frontend/check/check_list/infrastructure/check_standard_repository.dart';

part 'check_standard_notifier.freezed.dart';

@freezed
class CheckStandardState with _$CheckStandardState {
  const CheckStandardState._();
  const factory CheckStandardState.initial() = _Initial;
  const factory CheckStandardState.loadInProgress() = _LoadInProgress;
  const factory CheckStandardState.loadSuccess(CheckStandard standard) =
      _LoadSuccess;
  const factory CheckStandardState.loadFailure(
    CheckFailure failure,
  ) = _LoadFailure;
}

class CheckStandardNotifier extends StateNotifier<CheckStandardState> {
  CheckStandardNotifier(
    this._repository,
  ) : super(
          const CheckStandardState.initial(),
        );

  final CheckStandardRepository _repository;

  Future<void> getCheckStandard() async {
    state = const CheckStandardState.loadInProgress();

    final failureOrSuccess = await _repository.fetchCheckStandard();
    state = failureOrSuccess.fold(
      (failure) => CheckStandardState.loadFailure(
        failure,
      ),
      (success) => CheckStandardState.loadSuccess(
        success.entity,
      ),
    );
  }
}
