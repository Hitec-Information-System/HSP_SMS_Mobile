import 'package:frontend/nfc/application/nfc_read_notifier.dart';
import 'package:frontend/nfc/infrastructure/nfc_reader.dart';
import 'package:frontend/nfc/infrastructure/tag_reader.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nfc_manager/nfc_manager.dart';

final nfcManagerProvider = Provider((ref) => NfcManager.instance);

final tagProvider = Provider(
  (ref) => TagReader(
    ref.watch(nfcManagerProvider),
  ),
);

final nfcReaderProvider = Provider(
  (ref) => NFCReader(
    ref.watch(tagProvider),
  ),
);

final nfcReadNotifierProvider =
    StateNotifierProvider<NFCReadNotifier, NFCReadState>(
  (ref) => NFCReadNotifier(
    ref.watch(nfcReaderProvider),
  ),
);
