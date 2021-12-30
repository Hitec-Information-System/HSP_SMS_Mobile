import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:web/features/upload/presentation/provider/app_version_state.dart';
import 'package:web/features/upload/presentation/widgets/widgets.dart';
import 'package:web/provider.dart';

/// 새 버전 등록을 관장하는 위젯
/// - 파일 등록 최상위 위젯
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
        if (state.version.file == null) {
          _controller.reverse();
        } else {
          _controller.forward();
        }
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

    final file = ref.watch(
        appVersionStateNotifierProvider.select((state) => state.version.file));

    return AnimatedSwitcher(
      duration: const Duration(
        milliseconds: 400,
      ),
      transitionBuilder: (child, animation) {
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
      child: file == null ? const FileDropWidget() : const AppInfoWidget(),
      // child: const AppInfoWidget(),
    );
  }
}
