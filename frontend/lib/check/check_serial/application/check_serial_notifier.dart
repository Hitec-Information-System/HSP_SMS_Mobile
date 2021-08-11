import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:frontend/check/check_serial/domain/check_serial.dart';
import 'package:frontend/check/check_serial/domain/check_serial_failure.dart';
import 'package:frontend/check/check_serial/infrastructure/check_serial_loader.dart';

part 'check_serial_notifier.freezed.dart';

@freezed
class CheckSerialState with _$CheckSerialState {
  const CheckSerialState._();
  const factory CheckSerialState.initial() = _CheckSerialStateInitial;
  const factory CheckSerialState.loading() = _CheckSerialStateLoading;
  const factory CheckSerialState.loaded(CheckSerial serial) =
      _CheckSerialStateLoaded;
  const factory CheckSerialState.failure(CheckSerialFailure failure) =
      _CheckSerialStateFailure;
}

class CheckSerialNotifier extends StateNotifier<CheckSerialState> {
  final CheckSerialLoader _checkSerialLoader;

  CheckSerialNotifier(
    this._checkSerialLoader,
  ) : super(const CheckSerialState.initial());

  Future<void> getSerialInfo(String tagId) async {
    state = const CheckSerialState.loading();

    final failureOrSuccess = await _checkSerialLoader.getSerial(tagId);

    state = failureOrSuccess.fold(
      (failure) => CheckSerialState.failure(failure),
      (success) => CheckSerialState.loaded(success),
    );
  }

  Future<void> getFakeInfo(String tagId) async {
    final fakeData = CheckSerial(
      id: tagId,
      location: "2층 창고",
      lastCheckDate: DateTime.now(),
    );

    await Future.delayed(const Duration(seconds: 2), () => {});

    state = CheckSerialState.loaded(fakeData);
  }

  void clear() {
    state = const CheckSerialState.initial();
  }
}
