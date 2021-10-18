import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:frontend/check/application/check_info_notifier.dart';
import 'package:frontend/check/shared/providers.dart';
import 'package:frontend/tag/core/application/tag_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

import 'package:frontend/tag/core/domain/tag.dart';
import 'package:frontend/tag/core/shared/providers.dart';

import 'package:frontend/core/presentation/routes/app_router.gr.dart';

class QRScanPage extends ConsumerStatefulWidget {
  const QRScanPage({
    Key? key,
    this.onTagged,
  }) : super(key: key);

  final void Function(Tag)? onTagged;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _QRScanPageState();
}

class _QRScanPageState extends ConsumerState<QRScanPage> {
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    }
    controller!.resumeCamera();
  }

  @override
  Widget build(BuildContext context) {
    final scanArea = (MediaQuery.of(context).size.width < 400 ||
            MediaQuery.of(context).size.height < 400)
        ? 200.0
        : 300.0;

    ref.listen<TagState>(tagNotifierProvider, (state) {
      state.maybeWhen(
        initial: () {},
        qrReading: () {},
        qrRead: (tag) {
          AutoRouter.of(context).push(
            TagBottomSheetRoute(
              isTagged: true,
              switchingChild: const Text(
                "태그 완료",
                key: ValueKey<String>("BTM-SH-NFC_READ"),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
          );
          widget.onTagged?.call(tag);
        },
        failure: (failure) {
          // TODO: 에러 발생시
        },
        orElse: () {
          print("tagState orElse invoked!!!");
        },
      );
    });

    ref.listen<CheckInfoState>(checkInfoStateNotifierProvider, (state) {
      state.maybeWhen(
        orElse: () {
          print("checkState orElse invoked!!!");
        },
      );
    });

    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: QRView(
              key: qrKey,
              onQRViewCreated: (controller) {
                controller.scannedDataStream.listen((scanData) {
                  controller.pauseCamera();

                  ref
                      .watch(tagNotifierProvider.notifier)
                      .readQRTag(scanData.code);
                });
              },
              overlay: QrScannerOverlayShape(
                borderRadius: 10,
                borderLength: 30,
                borderWidth: 10,
                cutOutSize: scanArea,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
