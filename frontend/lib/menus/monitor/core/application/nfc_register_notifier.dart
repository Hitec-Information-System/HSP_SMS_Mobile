import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/auth/domain/user.dart';
import 'package:frontend/menus/monitor/core/domain/check_monitor_failure.dart';
import 'package:frontend/menus/monitor/core/infrastructure/check_monitor_repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'nfc_register_notifier.freezed.dart';

@freezed
class NfcRegisterState with _$NfcRegisterState {
  const NfcRegisterState._();
  const factory NfcRegisterState.initial() = _Initial;
  const factory NfcRegisterState.saving() = _Saving;
  const factory NfcRegisterState.saved() = _Saved;
  const factory NfcRegisterState.failure(CheckMonitorFailure failure) =
      _Failure;
}

class NfcRegisterStateNotifier extends StateNotifier<NfcRegisterState> {
  NfcRegisterStateNotifier(
    this._repository,
    this.user,
  ) : super(const NfcRegisterState.initial());

  final CheckMonitorRepository _repository;
  final User user;

  Future<void> saveNFCTag(
      {required String objCd, required String nfcId}) async {
    // 데이터 구조 눈에 잘보이게 하기 위해 다음과 같이 작성했고, 마지막에 넘겨주기 전에는 space 모두 제거

    state = const NfcRegisterState.saving();

    final xmlData = """
    <NewDataSet>
      <Table1>
        <NFC_ID>$nfcId</NFC_ID>
        <OBJ_CD>$objCd</OBJ_CD>
      </Table1>
    </NewDataSet>
    """
        .replaceAll(" ", "")
        .replaceAll('\n', "");

    final params = {
      "comp-cd": user.userInfo.compCd,
      "user-id": user.key,
      "trans-flag": "RF_REG",
      "trans-data": xmlData,
    };

    final failureOrSuccess = await _repository.saveNFCTag(params);
    state = failureOrSuccess.fold(
      (l) => NfcRegisterState.failure(l),
      (_) => const NfcRegisterState.saved(),
    );
  }
}
