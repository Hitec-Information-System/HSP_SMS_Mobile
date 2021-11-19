import 'package:flutter/material.dart';

import 'package:frontend/core/presentation/constants/constants.dart';
import 'package:frontend/core/presentation/widgets/no_glow_behavior.dart';
import 'package:frontend/menus/monitor/core/application/check_monitor_notifier.dart';
import 'package:frontend/menus/monitor/core/domain/check_spot.dart';
import 'package:frontend/menus/monitor/core/presentation/monit_category_card.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

// 문제점: 리턴 받는 리스트가 섞여서 들어오게 된다면 제대로 나누지 못하게 됨
Map<String, List<CheckSpot>> splitToSubGroup(List<CheckSpot> spots) {
  final Map<String, List<CheckSpot>> mainGroup = {};
  final subGroup = <CheckSpot>[];
  for (var i = 0; i < spots.length; i++) {
    if (i <= 0) {
      subGroup.add(spots[i]);
      if (spots.length == 1) {
        mainGroup[spots[i].objSubFlagNm] =
            subGroup.map((e) => e.copyWith()).toList();
      }
      continue;
    }

    if (spots[i - 1].objSubFlag != spots[i].objSubFlag) {
      // 아이디 존재여부 확인 이유 :
      //      라인에서 1반, 2반이 objSubFlagNm을 가지고 있기 때문에 add하지 않고 넣어준다면
      //      리스트 중 일부를 보여주지 않게 됨
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
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "${widget.categoryNm} 점검",
        ),
        actions: const [
          Center(
            child: Text(
              "V ${LogicConstants.versionNo}",
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          const SizedBox.expand(),
          RefreshIndicator(
            onRefresh: () => ref
                .read(widget.monitNotifierProvider.notifier)
                .getMonitoringList(),
            child: SizedBox.expand(
              child: ScrollConfiguration(
                behavior: const NoGlowBehavior(),
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: LayoutConstants.paddingXS,
                        vertical: LayoutConstants.paddingM),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.centerRight,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Consumer(
                                builder: (context, ref, child) {
                                  final _ =
                                      ref.watch(widget.monitNotifierProvider);
                                  return Text(
                                    "마지막 조회 : ${DateFormat("HH:mm").format(DateTime.now())}",
                                  );
                                },
                              ),
                              const SizedBox(height: LayoutConstants.spaceL),
                            ],
                          ),
                        ),
                        Consumer(
                          builder: (context, ref, child) {
                            final state =
                                ref.watch(widget.monitNotifierProvider);

                            return Align(
                              alignment: Alignment.topCenter,
                              child: Wrap(
                                children: List<Widget>.generate(
                                  state.maybeWhen(
                                    initial: () => 0,
                                    loading: () => 3,
                                    loaded: (data) =>
                                        splitToSubGroup(data.entity)
                                            .values
                                            .length,
                                    orElse: () => 0,
                                  ),
                                  (index) => Padding(
                                    padding: const EdgeInsets.all(
                                      LayoutConstants.paddingXS,
                                    ),
                                    child: state.maybeWhen(
                                      loading: () => const MonitCategoryCard(
                                        objSubNm: "",
                                        spots: [],
                                      ),
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
                            );
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
            ),
          ),
          Consumer(builder: (context, ref, child) {
            final state = ref.watch(widget.monitNotifierProvider);

            return state.maybeWhen(
              loaded: (data) {
                if (data.entity.isNotEmpty) {
                  return const SizedBox();
                } else {
                  return Positioned(
                    top: size.height / 2,
                    left: size.width / 2,
                    child: const FractionalTranslation(
                      translation: Offset(-0.5, -0.5),
                      child: Text(
                        "조회할 수 있는 목록이 없습니다.",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  );
                }
              },
              failure: (failure) => Positioned(
                top: size.height / 2,
                left: size.width / 2,
                child: FractionalTranslation(
                  translation: const Offset(-0.5, -0.5),
                  child: Text(
                    failure.when(
                      api: (int? statusCode, String? statusMsg) =>
                          statusMsg ?? "데이터를 불러오는 도중 발생하였습니다.\n관리자에게 문의하세요.",
                      noConnection: () => "인터넷 연결이 약합니다.",
                      internal: (String message) => message,
                    ),
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
              orElse: () => const SizedBox(),
            );
          })
        ],
      ),
    );
  }
}
