import 'package:flutter/material.dart';

import 'package:frontend/core/presentation/constants/constants.dart';
import 'package:frontend/menus/monitor/core/application/check_monitor_notifier.dart';
import 'package:frontend/menus/monitor/core/domain/check_spot.dart';
import 'package:frontend/menus/monitor/core/presentation/monit_category_card.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// 문제점: 리턴 받는 리스트가 섞여서 들어오게 된다면 제대로 나누지 못하게 됨
Map<String, List<CheckSpot>> splitToSubGroup(List<CheckSpot> spots) {
  final Map<String, List<CheckSpot>> mainGroup = {};
  final subGroup = <CheckSpot>[];
  for (var i = 0; i < spots.length; i++) {
    if (i <= 0) {
      subGroup.add(spots[i]);
      continue;
    }

    if (spots[i - 1].objSubFlag != spots[i].objSubFlag) {
      if (mainGroup[spots[i - 1].objSubFlagNm] == null) {
        mainGroup[spots[i - 1].objSubFlagNm] =
            subGroup.map((e) => e.copyWith()).toList();
      } else {
        mainGroup[spots[i - 1].objSubFlagNm]!
            .addAll(subGroup.map((e) => e.copyWith()).toList());
      }

      subGroup.clear();
    }

    subGroup.add(spots[i]);

    if (i == spots.length - 1) {
      if (mainGroup[spots[i].objSubFlagNm] == null) {
        mainGroup[spots[i].objSubFlagNm] =
            subGroup.map((e) => e.copyWith()).toList();
      } else {
        mainGroup[spots[i].objSubFlagNm]!
            .addAll(subGroup.map((e) => e.copyWith()).toList());
      }
    }
  }

  return mainGroup;
}

class MonitPage extends ConsumerStatefulWidget {
  const MonitPage({
    Key? key,
    required this.categoryNm,
    required this.monitNotifierProvider,
  }) : super(key: key);

  final String categoryNm;
  final StateNotifierProvider<CheckMonitorStateNotifier, CheckMonitorState>
      monitNotifierProvider;

  @override
  _MonitPageState createState() => _MonitPageState();
}

class _MonitPageState extends ConsumerState<MonitPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() =>
        ref.read(widget.monitNotifierProvider.notifier).getMonitoringList());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: RefreshIndicator(
        onRefresh: () =>
            ref.read(widget.monitNotifierProvider.notifier).getMonitoringList(),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(LayoutConstants.paddingL),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: LayoutConstants.spaceL),
                Text(
                  "${widget.categoryNm} 점검",
                  style: Theme.of(context).textTheme.headline4,
                ),
                const SizedBox(height: LayoutConstants.spaceL),
                Container(
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "현재시간 : ${TimeOfDay.fromDateTime(DateTime.now()).format(context)}",
                      ),
                      const SizedBox(height: LayoutConstants.spaceL),
                    ],
                  ),
                ),
                Consumer(
                  builder: (context, ref, child) {
                    final state = ref.watch(widget.monitNotifierProvider);

                    return state.maybeWhen(
                        failure: (_) => const Center(
                              child: Text("불러오는 중 에러가 발생했습니다."),
                            ),
                        // todo: list의 itemCount는 화면에 보여주는 구색을 맞추기 위해 임의 값을 할당한 것이니 적당한 값을 할당하라
                        orElse: () => Wrap(
                              children: List<Widget>.generate(
                                state.maybeWhen(
                                  initial: () => 0,
                                  loading: () => 4,
                                  loaded: (data) => splitToSubGroup(data.entity)
                                      .values
                                      .length,
                                  orElse: () => 0,
                                ),
                                (index) => Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: LayoutConstants.paddingS),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: LayoutConstants.paddingS),
                                    child: state.maybeWhen(
                                      loading: () => Container(),
                                      loaded: (data) {
                                        final groupedList =
                                            splitToSubGroup(data.entity);
                                        return MonitCategoryCard(
                                          objSubNm:
                                              groupedList.keys.toList()[index],
                                          spots: groupedList.values
                                              .toList()[index],
                                        );
                                      },
                                      orElse: () => Container(),
                                    ),
                                  ),
                                ),
                              ),
                            ));
                  },
                ),
                const SizedBox(
                  height: 2 * LayoutConstants.spaceXL,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
