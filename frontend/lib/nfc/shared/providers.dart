import 'package:frontend/nfc/application/nfc_notifier.dart';
import 'package:frontend/nfc/infrastructure/tag_read/id_tag_reader.dart';
import 'package:frontend/nfc/infrastructure/tag_read/id_tag_to_info_converter.dart';
import 'package:frontend/nfc/infrastructure/tag_read/tag_reader.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nfc_manager/nfc_manager.dart';

final nfcManagerProvider = Provider((ref) => NfcManager.instance);

final tagProvider = Provider<TagReader>(
  (ref) => IdTagReader(
    ref.watch(nfcManagerProvider),
  ),
);

final idTagConverterProvider = Provider(
  (ref) => IdTagToInfoConverter(
    ref.watch(tagProvider),
  ),
);

final nfcNotifierProvider = StateNotifierProvider<NfcNotifier, NfcState>(
  (ref) => NfcNotifier(
    ref.watch(idTagConverterProvider),
  ),
);
