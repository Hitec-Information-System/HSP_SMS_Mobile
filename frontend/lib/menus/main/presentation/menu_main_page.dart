import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/application/localization/app_localizations.dart';
import 'package:frontend/core/presentation/routes/app_router.gr.dart';
import 'package:frontend/core/presentation/widgets.dart';
import 'package:frontend/tag/core/application/tag_notifier.dart';
import 'package:frontend/tag/core/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MenuMainPage extends HookConsumerWidget {
  const MenuMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDialOpen = useState<bool>(false);

    final state = ref.watch(tagNotifierProvider);

    ref.listen(
      tagNotifierProvider,
      (tagState) {
        (tagState! as TagState).maybeWhen(
          initial: () =>
              AutoRouter.of(context).popUntilRouteWithName("HomeRoute"),
          nfcReading: () {
            showModalBottomSheet(
                backgroundColor: Colors.transparent,
                context: context,
                builder: (context) {
                  return BottomSheetWidget(children: [
                    Text(
                      "Ready to Scan",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          AutoRouter.of(context).pop();
                        },
                        child: Text(
                          "Cancel",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                  ]);
                });
          },
          qrReading: () =>
              AutoRouter.of(context).push(const QRScanRoute()).then((_) {
            state.maybeMap(
                read: (_) {},
                orElse: () => ref.watch(tagNotifierProvider.notifier).clear());
          }),
          read: (tag) {
            AutoRouter.of(context).popUntilRouteWithName("HomeRoute");
          },
          orElse: () {},
        );
      },
    );

    return Scaffold(
        appBar: AppBar(
          title: Text(AppLocalizations.of(context)?.translate('title') ?? ""),
          actions: [
            IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () {
                  AutoRouter.of(context).pushNamed('/settings');
                }),
            IconButton(
                icon: const Icon(Icons.logout_rounded),
                onPressed: () {
                  // TODO: DB 고쳐지면 활성화
                  // ref.watch(authNotifierProvider.notifier).signOut();
                })
          ],
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppLocalizations.of(context)?.translate('first_string') ?? "",
              style: const TextStyle(fontSize: 25),
              textAlign: TextAlign.center,
            ),
            Text(state.map(
                initial: (_) => "initial",
                qrReading: (_) => "reading...",
                read: (tagState) => tagState.tag.id,
                nfcReading: (_) => "reading...",
                failure: (failState) => failState.failure.toString())),
          ],
        )),
        floatingActionButton: ExpandableFAB(
          icon: Icons.qr_code,
          activeIcon: Icons.close,
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          spacing: 3,
          openCloseDial: isDialOpen,
          overlayColor: Colors.black,
          overlayOpacity: .5,
          spaceBetweenChildren: 4,
          tooltip: "Tag Method",
          heroTag: "expandable_fab_hero_tag",
          elevation: 3.0,
          animationSpeed: 200,
          children: [
            ExpandableFABChild(
              child: const Icon(Icons.qr_code),
              label: "QR 태그",
              onTap: () =>
                  ref.watch(tagNotifierProvider.notifier).navigateToQR(),
            ),
            ExpandableFABChild(
              child: const Icon(Icons.nfc),
              label: "NFC 태그",
              onTap: () => ref.watch(tagNotifierProvider.notifier).readNFCTag(),
            ),
          ],
        ));
  }
}
