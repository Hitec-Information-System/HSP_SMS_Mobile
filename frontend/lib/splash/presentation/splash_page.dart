import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
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
    );
  }
}
