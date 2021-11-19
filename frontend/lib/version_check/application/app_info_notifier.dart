import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:frontend/menus/monitor/core/domain/check_monitor_failure.dart';
import 'package:frontend/version_check/domain/app_info.dart';
import 'package:frontend/version_check/infrastructure/app_info_repository.dart';

part 'app_info_notifier.freezed.dart';

@freezed
class AppInfoState with _$AppInfoState {
  const AppInfoState._();
  const factory AppInfoState.initial() = _Initial;
  const factory AppInfoState.checking() = _Checking;
  const factory AppInfoState.upToDate(AppInfo info) = _UpToDate;
  const factory AppInfoState.outDated(AppInfo info) = _OutDated;
  const factory AppInfoState.failure(CheckMonitorFailure failure) = _Failure;
}

class AppInfoStateNotifier extends StateNotifier<AppInfoState> {
  final AppInfoRepository _repository;
  final String currentVersion;

  AppInfoStateNotifier(
    this._repository, {
    required this.currentVersion,
  }) : super(const AppInfoState.initial());

  Future<void> checkAppVersion() async {
    final failureOrSuccess = await _repository.fetchApkVersionInfo();

    state = failureOrSuccess.fold(
      (l) => AppInfoState.failure(l),
      (r) => r.version == currentVersion
          ? AppInfoState.upToDate(r)
          : AppInfoState.outDated(r),
    );
  }
}
