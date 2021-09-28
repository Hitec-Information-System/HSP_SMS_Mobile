import 'package:flutter/material.dart';

import 'package:frontend/core/presentation/constants/constants.dart';
import 'package:frontend/menus/monitor/core/application/check_monitor_notifier.dart';
import 'package:frontend/menus/monitor/core/domain/check_spot.dart';
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
      mainGroup[spots[i - 1].objSubFlagNm] = subGroup;
      subGroup.clear();
    }

    subGroup.add(spots[i]);

    if (i == spots.length - 1) {
      mainGroup[spots[i].objSubFlagNm] = subGroup;
    }
  }

  return mainGroup;
}

class MonitPage extends StatefulWidget {
  const MonitPage({
    Key? key,
    required this.categoryNm,
    required this.objFlag,
    required this.monitNotifierProvider,
  }) : super(key: key);

  final String categoryNm;
  final String objFlag;
  final StateNotifierProvider<CheckMonitorStateNotifier, CheckMonitorState>
      monitNotifierProvider;

  @override
  _MonitPageState createState() => _MonitPageState();
}

class _MonitPageState extends State<MonitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SingleChildScrollView(
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
                      orElse: () => Wrap(
                            children: List<Widget>.generate(
                              state.maybeWhen(
                                initial: () => 0,
                                loading: () => 4,
                                loaded: (data) =>
                                    splitToSubGroup(data.entity).values.length,
                                orElse: () => 0,
                              ),
                              (index) => Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: LayoutConstants.paddingS),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: LayoutConstants.paddingS),
                                  child: Container(),
                                  // child: CategoryCard(
                                  //   category: localBuildingData[index],
                                  // ),
                                ),
                              ),
                            ),
                          ));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
