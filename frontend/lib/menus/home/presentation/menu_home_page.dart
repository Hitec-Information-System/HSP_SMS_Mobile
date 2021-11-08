import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:frontend/core/presentation/constants/constants.dart';
import 'package:frontend/core/presentation/routes/app_router.gr.dart';
import 'package:frontend/core/presentation/widgets/no_glow_behavior.dart';
import 'package:frontend/menus/home/application/board_items_notifier.dart';
import 'package:frontend/menus/home/presentation/pie_painter.dart';
import 'package:frontend/menus/home/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MenuHomePage extends ConsumerStatefulWidget {
  const MenuHomePage({Key? key}) : super(key: key);

  @override
  _MenuHomePageState createState() => _MenuHomePageState();
}

class _MenuHomePageState extends ConsumerState<MenuHomePage> {
  Future<void> fetchSafetyAndNoticeBoard() async {
    ref.read(noticeBoardItemsStateNotifierProvider.notifier).getBoardList();
    ref.read(safetyBoardItemsStateNotifierProvider.notifier).getBoardList();
  }

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      fetchSafetyAndNoticeBoard();
    });
  }

  @override
  Widget build(BuildContext context) {
    final safetyBoard = ref.watch(safetyBoardItemsStateNotifierProvider);
    final noticeBoard = ref.watch(noticeBoardItemsStateNotifierProvider);

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
              return fetchSafetyAndNoticeBoard();
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
                          _PieChart(
                            title: "작업장 1",
                            percent: 68,
                            colors: [
                              Color(0xFFFF2525),
                              Color(0xFFFF8989),
                              Color(0xFFFF2525),
                            ],
                          ),
                          Spacer(),
                          _PieChart(
                            title: "작업장 2",
                            percent: 60.2385,
                            colors: [
                              Color(0xFFFFE805),
                              Color(0xFFFFF489),
                              Color(0xFFFFE805),
                            ],
                          ),
                          Spacer(),
                          _PieChart(
                            title: "작업장 3",
                            percent: 100.00,
                            colors: [
                              Color(0xFF2633C5),
                              Color(0xFF8A98E8),
                              Color(0xFF2633C5),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: LayoutConstants.spaceXL),
                    _HomeSectionTitle(
                      title: "공지사항",
                      moreInfoName: "더보기",
                      onMoreInfoTapped: () {},
                    ),
                    _BoardPanel(board: noticeBoard),
                    const SizedBox(height: LayoutConstants.spaceXL),
                    _HomeSectionTitle(
                      title: "안전신고",
                      moreInfoName: "추가",
                      icon: Icons.add,
                      onMoreInfoTapped: () {
                        const BoardDetailsRoute().show(context);
                      },
                    ),
                    _BoardPanel(board: safetyBoard),
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

class _BoardPanel extends StatelessWidget {
  const _BoardPanel({
    Key? key,
    required this.board,
  }) : super(key: key);

  final BoardItemsState board;

  @override
  Widget build(BuildContext context) {
    return _SectionCard(
      child: board.when(
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
        loaded: (items) => items.isNotEmpty
            ? Column(
                children: List.generate(
                  items.length,
                  (index) => Material(
                    child: ListTile(
                      onTap: () {
                        const BoardDetailsRoute().show(context);
                      },
                      leading: Text("${index + 1}"),
                      title: Text(
                        items[index].title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
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
                api: (statusCode, msg) =>
                    msg ?? "알 수 없는 오류가 발생하였습니다. 관리자에게 문의하세요.",
                noConnection: () => "인터넷 연결이 약합니다.",
              ),
            ),
          ),
        ),
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
    required this.percent,
    required this.colors,
    required this.title,
  }) : super(key: key);

  final String title;
  final double percent;
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: 150,
      child: Stack(
        children: [
          SizedBox(
            height: 150,
            width: 150,
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
