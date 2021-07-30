import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/application/localization/app_localizations.dart';

import 'package:frontend/core/presentation/routes/app_router.gr.dart';
import 'package:frontend/core/presentation/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDialOpen = useState<bool>(false);

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
            ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).push(TagScanRoute());
              },
              child: Text("NFC Reader Button"),
            )
          ],
        )),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.black,
          // currentIndex: 2,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "1페이지"),
            BottomNavigationBarItem(
                icon: Icon(Icons.access_alarm), label: "2페이지"),
            BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm),
              label: "",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.access_time), label: "3페이지"),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: "4페이지"),
          ],
        ),
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
            ),
            ExpandableFABChild(
                child: const Icon(Icons.nfc),
                label: "NFC 태그",
                onTap: () {
                  final nfcModal = showModalBottomSheet(
                      backgroundColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      context: context,
                      builder: (context) {
                        return Container(
                          height: MediaQuery.of(context).size.height / 2.5,
                          margin: const EdgeInsets.only(
                              left: 6, right: 6, bottom: 12),
                          padding: const EdgeInsets.symmetric(
                              vertical: 18, horizontal: 16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                "Ready to Scan",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Expanded(child: Container()),
                              ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Cancel",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )),
                            ],
                          ),
                        );
                      });
                  nfcModal.then((value) => print("closed!!"));
                }),
          ],
        ));
  }
}
