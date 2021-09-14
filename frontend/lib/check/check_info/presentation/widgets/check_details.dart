import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:frontend/check/check_info/domain/check_info.dart';
import 'package:frontend/check/check_info/presentation/remark_popup.dart';
import 'package:frontend/check/check_info/presentation/widgets.dart';
import 'package:frontend/check/check_info/shared/providers.dart';

import 'package:frontend/core/presentation/constants/constants.dart';
import 'package:frontend/core/presentation/routes/hero_dialog_router.dart';
import 'package:frontend/core/presentation/widgets/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nil/nil.dart';

class CheckListDetailsSection extends ConsumerWidget {
  const CheckListDetailsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(checkInfoStateNotifierProvider);

    return state.maybeWhen(
        loaded: (_, data) => Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: data.details
                  .mapIndexed(
                    (index, element) => CheckDetailsCard(
                      index: index,
                      details: data.details[index],
                    ),
                  )
                  .toList(),
            ),
        orElse: () => nil);
  }
}

const resultOptions = ["양호", "불량"];

class CheckDetailsCard extends StatelessWidget {
  const CheckDetailsCard({
    Key? key,
    required this.index,
    required this.details,
  }) : super(key: key);

  // Todo: change these fields to one entity
  final int index;
  final CheckDetails details;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: details.chkItemCd,
      createRectTween: (begin, end) => CustomRectTween(begin: begin, end: end),
      child: Padding(
        padding: const EdgeInsets.all(LayoutConstants.paddingS),
        child: Material(
          color: Theme.of(context).bottomAppBarColor,
          elevation: 2,
          borderRadius: BorderRadius.circular(LayoutConstants.radiusS),
          child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: LayoutConstants.paddingL,
                vertical: LayoutConstants.paddingM,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        (index + 1).toString(),
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      const SizedBox(width: LayoutConstants.spaceL),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              padding: const EdgeInsets.only(
                                  bottom: LayoutConstants.paddingM),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  GestureDetector(
                                    onTap: () async {
                                      // TODO: Image picking
                                    },
                                    child: Stack(
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.symmetric(
                                            horizontal:
                                                LayoutConstants.paddingS,
                                          ),
                                          child: Icon(
                                            Icons.add_a_photo,
                                          ),
                                        ),
                                        // TODO: add logic for showing image counts if images are taken
                                        if (details.images.isEmpty)
                                          const SizedBox()
                                        else
                                          Positioned(
                                            top: 0,
                                            right: 0,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        LayoutConstants
                                                            .radiusM),
                                              ),
                                              padding: const EdgeInsets
                                                      .symmetric(
                                                  horizontal: (LayoutConstants
                                                              .paddingXS +
                                                          LayoutConstants
                                                              .paddingS) /
                                                      2),
                                              child: Text(
                                                details.images.length
                                                    .toString(),
                                                textAlign: TextAlign.center,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText2!
                                                    .copyWith(
                                                      fontSize: 11,
                                                      color: Colors.white,
                                                    ),
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () async {
                                      // TODO: Cached Image Clear
                                    },
                                    child: const Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: LayoutConstants.paddingS,
                                      ),
                                      child: Icon(
                                        Icons.refresh,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 40,
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: LayoutConstants.paddingM),
                              child: Text(
                                details.chkItemNm,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            const SizedBox(height: LayoutConstants.spaceM),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  HeroDialogRouter(
                                    builder: (context) => Center(
                                      child: RemarkPopupCard(
                                        index: index,
                                        details: details,
                                      ),
                                    ),
                                  ),
                                );
                              },
                              child: Container(
                                height: 30,
                                margin: const EdgeInsets.only(
                                  left: LayoutConstants.marginM,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      LayoutConstants.radiusM),
                                  color: Theme.of(context).backgroundColor,
                                ),
                                alignment: Alignment.centerLeft,
                                padding: const EdgeInsets.symmetric(
                                    horizontal: LayoutConstants.paddingM),
                                child: Text(details.remark,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                          color: Theme.of(context).hintColor,
                                        )),
                              ),
                            ),
                            const SizedBox(height: LayoutConstants.spaceM),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text("${details.methodChk} 확인 결과:"),
                                const SizedBox(width: LayoutConstants.spaceL),
                                Consumer(builder: (context, ref, child) {
                                  final state =
                                      ref.watch(checkInfoStateNotifierProvider);
                                  return state.maybeWhen(
                                    loaded: (_, data) => CheckToggle(
                                      isSelected: List<bool>.generate(
                                          resultOptions.length,
                                          (optionsIdx) =>
                                              resultOptions[optionsIdx] ==
                                              data.details[index].result),
                                      children: resultOptions,
                                      onPressed: (clickedIdx) {
                                        ref
                                            .read(checkInfoStateNotifierProvider
                                                .notifier)
                                            .setCheckInfo(
                                              data.copyWith(
                                                details: data.details
                                                    .mapIndexed(
                                                        (detailIdx, detail) {
                                                  if (detailIdx == index) {
                                                    return detail.copyWith(
                                                      result: resultOptions[
                                                          clickedIdx],
                                                    );
                                                  } else {
                                                    return detail;
                                                  }
                                                }).toList(),
                                              ),
                                            );
                                      },
                                    ),
                                    orElse: () => const SizedBox(),
                                  );
                                })
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }
}
