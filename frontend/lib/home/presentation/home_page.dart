import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/application/localization/app_localizations.dart';

import 'package:frontend/core/presentation/routes/app_router.gr.dart';
import 'package:frontend/core/presentation/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';

class HomePage extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final animController = useAnimationController(
      duration: const Duration(milliseconds: 500),
    );

    final animation = TimelineTween<AnimProperty>()
        .addScene(
          begin: const Duration(milliseconds: 0),
          end: const Duration(milliseconds: 500),
          curve: Curves.ease,
        )
        .animate(AnimProperty.height, tween: Tween<double>(begin: 50, end: 100))
        .parent
        .animatedBy(animController);

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
          BottomNavigationBarItem(icon: Icon(Icons.access_time), label: "3페이지"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "4페이지"),
        ],
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          if (animController.status == AnimationStatus.dismissed) {
            animController.forward();
          } else if (animController.status == AnimationStatus.completed) {
            animController.reverse();
          }
        },
        child: AnimatedBuilder(
          animation: animController,
          builder: (context, child) {
            return Container(
              padding: const EdgeInsets.all(10),
              height: animation.value.get(AnimProperty.height),
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.amber,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.qr_code),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
