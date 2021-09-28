import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/core/domain/fresh.dart';
import 'package:frontend/core/presentation/constants/constants.dart';
import 'package:frontend/menus/monitor/core/domain/check_monitor_failure.dart';
import 'package:frontend/menus/monitor/core/domain/check_spot.dart';
import 'package:frontend/menus/monitor/core/infrastructure/check_monitor_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'check_monitor_notifier.freezed.dart';

@freezed
class CheckMonitorState with _$CheckMonitorState {
  const CheckMonitorState._();
  const factory CheckMonitorState.initial() = _Initial;
  const factory CheckMonitorState.loading() = _Loading;
  const factory CheckMonitorState.loaded(Fresh<List<CheckSpot>> data) = _Loaded;
  const factory CheckMonitorState.failure(CheckMonitorFailure failure) =
      _Failure;
}

class CheckMonitorStateNotifier extends StateNotifier<CheckMonitorState> {
  CheckMonitorStateNotifier(
    this._repository,
    this.token,
    this.objFlag,
  ) : super(const CheckMonitorState.initial());

  final CheckMonitorRepository _repository;
  final String token;
  final String objFlag;

  Future<void> getMonitoringList() async {
    state = const CheckMonitorState.loading();

    final params = {
      "comp-cd": LogicConstants.companyCd,
      "sys-flag": LogicConstants.systemFlag,
      "user": token,
      "flag": objFlag,
    };

    final failureOrSuccess = await _repository.fetchCheckMonitsList(params);
    state = failureOrSuccess.fold(
      (l) => CheckMonitorState.failure(l),
      (r) => CheckMonitorState.loaded(r),
    );
  }
}
