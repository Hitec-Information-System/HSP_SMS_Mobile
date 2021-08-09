import 'package:frontend/tag/core/application/tag_notifier.dart';
import 'package:frontend/tag/nfc/infrastructure/nfc_converter.dart';
import 'package:frontend/tag/qr/infrastructure/qr_converter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nfc_manager/nfc_manager.dart';

final nfcManagerProvider = Provider.autoDispose((ref) => NfcManager.instance);

final nfcConverterProvider = Provider.autoDispose((ref) => NFCConverter());

final qrConverterProvider = Provider.autoDispose((ref) => QRConverter());

final tagNotifierProvider =
    StateNotifierProvider.autoDispose<TagNotifier, TagState>(
  (ref) => TagNotifier(
    ref.watch(nfcConverterProvider),
    ref.watch(qrConverterProvider),
    ref.watch(nfcManagerProvider),
  ),
);
