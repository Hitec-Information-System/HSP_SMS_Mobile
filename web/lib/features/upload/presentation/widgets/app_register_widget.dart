import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:web/features/upload/domain/entity/app_version.dart';
import 'package:web/features/upload/presentation/provider/app_version_state.dart';
import 'package:web/features/upload/presentation/widgets/widgets.dart';
import 'package:web/provider.dart';

/// 새 버전 등록을 관장하는 위젯
class AppRegisterWidget extends ConsumerStatefulWidget {
  const AppRegisterWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<AppRegisterWidget> createState() => _AppRegisterWidgetState();
}

class _AppRegisterWidgetState extends ConsumerState<AppRegisterWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _expanded;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    final curveAnimation =
        CurvedAnimation(parent: _controller, curve: Curves.ease);

    _expanded = Tween<double>(
      begin: 0,
      end: 30,
    ).animate(curveAnimation);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<AppVersionState>(
      appVersionStateNotifierProvider,
      (prev, state) {
        state.maybeWhen(
          fileAdded: (AppVersion _) => _controller.forward(),
          infoLoaded: (AppVersion _) => _controller.reverse(),
          failure: (AppVersion _, String msg) {},
          orElse: () {},
        );
      },
    );

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Container(
          width: 550 + _expanded.value,
          height: 350 + _expanded.value,
          decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(.1),
                offset: const Offset(7, 10),
                blurRadius: 2.0,
              ),
            ],
          ),
          child: child,
        );
      },
      child: const AppRegisterCarouselWidget(),
    );
  }
}

class AppRegisterCarouselWidget extends ConsumerStatefulWidget {
  const AppRegisterCarouselWidget({Key? key}) : super(key: key);

  @override
  _AppRegisterCarouselWidgetState createState() =>
      _AppRegisterCarouselWidgetState();
}

class _AppRegisterCarouselWidgetState
    extends ConsumerState<AppRegisterCarouselWidget>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    ref.listen<AppVersionState>(
      appVersionStateNotifierProvider,
      (prev, state) async {
        if (prev != state) {}
      },
    );

    final state =
        ref.watch(appVersionStateNotifierProvider.select((state) => state));

    return AnimatedSwitcher(
      duration: const Duration(
        milliseconds: 400,
      ),
      transitionBuilder: (child, animation) {
        // final rotate = Tween(begin: math.pi, end: 0.0).animate(animation);

        // return AnimatedBuilder(
        //   animation: rotate,
        //   child: widget,
        //   builder: (_, widget) {
        //     return Transform(
        //       transform: Matrix4.rotationY(rotate.value),
        //       child: widget,
        //       alignment: Alignment.center,
        //     );
        //   },
        // );
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0, 0.1),
            end: const Offset(0, 0),
          ).animate(animation),
          child: FadeTransition(
            opacity: Tween<double>(
              begin: 0,
              end: 1,
            ).animate(animation),
            child: child,
          ),
        );
      },
      child: state.maybeWhen(
        fileAdded: (AppVersion _) {
          return const AppInfoWidget();
        },
        saved: (AppVersion _) {
          return const FileDropWidget();
        },
        failure: (AppVersion _, String msg) {
          return const AppInfoWidget();
        },
        orElse: () {
          return const FileDropWidget();
          // return const AppInfoWidget();
        },
      ),
    );
  }
}
