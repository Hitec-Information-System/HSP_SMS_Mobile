import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frontend/core/presentation/routes/app_router.gr.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            AutoRouter.of(context).push(const CheckListRoute());
          },
          child: SizedBox(
            width: 262,
            height: 262,
            child: Image.asset(
              SchedulerBinding.instance!.window.platformBrightness ==
                      Brightness.dark
                  ? "assets/splash/splash_dark.png"
                  : "assets/splash/splash_light.png",
            ),
          ),
        ),
      ),
    );
  }
}
