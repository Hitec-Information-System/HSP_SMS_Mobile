import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:frontend/core/presentation/constants/constants.dart';
import 'package:frontend/core/presentation/routes/app_router.gr.dart';
import 'package:frontend/core/presentation/widgets/no_glow_behavior.dart';
import 'package:frontend/menus/home/application/board_notifier.dart';
import 'package:frontend/menus/home/presentation/pie_painter.dart';
import 'package:frontend/menus/home/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MenuHomePage extends ConsumerStatefulWidget {
  const MenuHomePage({Key? key}) : super(key: key);

  @override
  _MenuHomePageState createState() => _MenuHomePageState();
}

class _MenuHomePageState extends ConsumerState<MenuHomePage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref.read(boardStateNotifierProvider.notifier).getBoard();
    });
  }

  @override
  Widget build(BuildContext context) {
    final board = ref.watch(boardStateNotifierProvider);

    ref.listen<BoardState>(boardStateNotifierProvider, (state) {
      state.maybeWhen(
        edited: () => ref.read(boardStateNotifierProvider.notifier).getBoard(),
        orElse: () {},
      );
    });

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text("Home"),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () => AutoRouter.of(context).push(
              const MenuSettingsRoute(),
            ),
            icon: Icon(
              Icons.settings,
              color: Theme.of(context).iconTheme.color,
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          const SizedBox.expand(),
          RefreshIndicator(
            onRefresh: () {
              return ref.read(boardStateNotifierProvider.notifier).getBoard();
            },
            child: ScrollConfiguration(
              behavior: const NoGlowBehavior(),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const _HomeSectionTitle(
                      title: "현황판",
                    ),
                    _SectionCard(
                      child: Row(
                        children: [
                          const Spacer(),
                          _PieChart(
                            title: "시설물",
                            completed: board.maybeWhen(
                              loaded: (data) =>
                                  data.status.building.completedCount,
                              orElse: () => 0,
                            ),
                            notCompleted: board.maybeWhen(
                              loaded: (data) =>
                                  data.status.building.notCompletedCount,
                              orElse: () => 0,
                            ),
                            colors: const [
                              Color(0xFFFF2525),
                              Color(0xFFFF8989),
                              Color(0xFFFF2525),
                            ],
                          ),
                          const Spacer(),
                          _PieChart(
                            title: "라인",
                            completed: board.maybeWhen(
                              loaded: (data) => data.status.line.completedCount,
                              orElse: () => 0,
                            ),
                            notCompleted: board.maybeWhen(
                              loaded: (data) =>
                                  data.status.line.notCompletedCount,
                              orElse: () => 0,
                            ),
                            colors: const [
                              Color(0xFFFFE805),
                              Color(0xFFFFF489),
                              Color(0xFFFFE805),
                            ],
                          ),
                          const Spacer(),
                          _PieChart(
                            title: "지게차",
                            completed: board.maybeWhen(
                              loaded: (data) =>
                                  data.status.forklift.completedCount,
                              orElse: () => 0,
                            ),
                            notCompleted: board.maybeWhen(
                              loaded: (data) =>
                                  data.status.forklift.notCompletedCount,
                              orElse: () => 0,
                            ),
                            colors: const [
                              Color(0xFF2633C5),
                              Color(0xFF8A98E8),
                              Color(0xFF2633C5),
                            ],
                          ),
                          const Spacer(),
                        ],
                      ),
                    ),
                    const SizedBox(height: LayoutConstants.spaceXL),
                    _HomeSectionTitle(
                      title: "공지사항",
                      onMoreInfoTapped: () {},
                    ),
                    _SectionCard(
                      child: board.maybeWhen(
                        initial: () => const SizedBox(
                          height: 300,
                          child: Center(
                            child: Text("조회되지 않음"),
                          ),
                        ),
                        loading: () => const SizedBox(
                          height: 300,
                          child: Center(
                            child: CircularProgressIndicator(),
                          ),
                        ),
                        loaded: (board) => board.notice.isNotEmpty
                            ? ConstrainedBox(
                                constraints: const BoxConstraints(
                                  minHeight: 300,
                                ),
                                child: Column(
                                  children: List.generate(
                                    board.notice.length,
                                    (index) => Material(
                                      child: ListTile(
                                        onTap: () {},
                                        leading: Text("${index + 1}"),
                                        title: Text(
                                          board.notice[index].title,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            : const SizedBox(
                                height: 300,
                                child: Center(
                                  child: Text("등록된 항목이 없습니다."),
                                ),
                              ),
                        failure: (failure) => SizedBox(
                          height: 300,
                          child: Center(
                            child: Text(
                              failure.when(
                                api: (int? statusCode, String? msg) =>
                                    msg ?? "알 수 없는 오류가 발생하였습니다. 관리자에게 문의하세요.",
                                noConnection: () => "인터넷 연결이 약합니다.",
                                internal: (String message) => message,
                              ),
                            ),
                          ),
                        ),
                        orElse: () => const SizedBox(
                          height: 300,
                        ),
                      ),
                    ),
                    const SizedBox(height: LayoutConstants.spaceXL),
                    _HomeSectionTitle(
                      title: "안전재고",
                      moreInfoName: "추가",
                      icon: Icons.add,
                      onMoreInfoTapped: () {
                        BoardItemRoute().show(context);
                      },
                    ),
                    _SectionCard(
                      child: board.maybeWhen(
                        initial: () => const SizedBox(
                          height: 300,
                          child: Center(
                            child: Text("조회되지 않음"),
                          ),
                        ),
                        loading: () => const SizedBox(
                          height: 300,
                          child: Center(
                            child: CircularProgressIndicator(),
                          ),
                        ),
                        loaded: (board) => board.safety.isNotEmpty
                            ? ConstrainedBox(
                                constraints: const BoxConstraints(
                                  minHeight: 300,
                                ),
                                child: Column(
                                  children: List.generate(
                                    board.safety.length,
                                    (index) => Material(
                                      child: ListTile(
                                        onTap: () {
                                          BoardItemRoute(
                                            enabled: false,
                                            path: board.safety[index].key,
                                          ).show(context);
                                        },
                                        leading: Text("${index + 1}"),
                                        title: Text(
                                          board.safety[index].title,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            : const SizedBox(
                                height: 300,
                                child: Center(
                                  child: Text("등록된 항목이 없습니다."),
                                ),
                              ),
                        failure: (failure) => SizedBox(
                          height: 300,
                          child: Center(
                            child: Text(
                              failure.when(
                                api: (int? statusCode, String? msg) =>
                                    msg ?? "알 수 없는 오류가 발생하였습니다. 관리자에게 문의하세요.",
                                noConnection: () => "인터넷 연결이 약합니다.",
                                internal: (String message) => message,
                              ),
                            ),
                          ),
                        ),
                        orElse: () => const SizedBox(
                          height: 300,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 2 * LayoutConstants.spaceXL,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _SectionCard extends StatelessWidget {
  const _SectionCard({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(LayoutConstants.marginM),
      padding: const EdgeInsets.all(
        LayoutConstants.paddingM,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
        borderRadius: BorderRadius.circular(LayoutConstants.radiusM),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.grey.withOpacity(.2),
            offset: const Offset(1.1, 1.1),
            blurRadius: LayoutConstants.radiusM,
          ),
        ],
      ),
      child: child,
    );
  }
}

class _PieChart extends StatelessWidget {
  const _PieChart({
    Key? key,
    required this.completed,
    required this.notCompleted,
    required this.colors,
    required this.title,
  }) : super(key: key);

  final String title;
  final int completed;
  final int notCompleted;
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    final percent =
        notCompleted == 0 ? 0.0 : completed / (completed + notCompleted) * 100;

    return SizedBox(
      height: 110,
      width: 110,
      child: Stack(
        children: [
          SizedBox(
            height: 110,
            width: 110,
            child: CustomPaint(
              painter: PiePainter(
                angle: percent * (360 / 100),
                colors: colors,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "${percent.toStringAsFixed(percent.truncateToDouble() == percent ? 0 : 2)} %",
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "$completed",
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const TextSpan(
                          text: " / ",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(
                        text: "${completed + notCompleted}",
                      )
                    ],
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _HomeSectionTitle extends StatelessWidget {
  const _HomeSectionTitle({
    Key? key,
    required this.title,
    this.moreInfoName,
    this.onMoreInfoTapped,
    this.icon = Icons.arrow_forward,
  }) : super(key: key);

  final String title;
  final String? moreInfoName;
  final void Function()? onMoreInfoTapped;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              title,
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 19,
                letterSpacing: 0.5,
              ),
            ),
          ),
          if (moreInfoName == null)
            const SizedBox()
          else
            InkWell(
              highlightColor: Colors.transparent,
              borderRadius: BorderRadius.circular(LayoutConstants.radiusS),
              onTap: onMoreInfoTapped,
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Row(
                  children: <Widget>[
                    Text(
                      moreInfoName!,
                      style: const TextStyle(
                        letterSpacing: 0.5,
                      ),
                    ),
                    Icon(
                      icon,
                      size: 18,
                    ),
                  ],
                ),
              ),
            )
        ],
      ),
    );
  }
}
