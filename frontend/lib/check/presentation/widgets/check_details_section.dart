import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:frontend/check/domain/check_info.dart';
import 'package:frontend/check/presentation/remark_popup.dart';
import 'package:frontend/check/presentation/widgets.dart';
import 'package:frontend/check/shared/providers.dart';
import 'package:frontend/core/presentation/constants/constants.dart';
import 'package:frontend/core/presentation/routes/hero_dialog_router.dart';
import 'package:frontend/core/presentation/widgets/dialogs.dart';
import 'package:frontend/core/presentation/widgets/widgets.dart';

import 'package:collection/collection.dart';

final _currentDetail =
    Provider<CheckDetails>((ref) => throw UnimplementedError());

const _resultOptions = ["양호", "미흡", "불량", "미점검"];

class CheckListDetailsSection extends ConsumerWidget {
  const CheckListDetailsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print("list rebuilt");

    final details = ref.watch(
        checkInfoStateNotifierProvider.select((state) => state.info.details));
    final intervals = ref.watch(
        checkInfoStateNotifierProvider.select((state) => state.info.intervals));

    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return CheckListDetailsDirectory(
          title: intervals[index].name,
          children: details
              .where((detail) => detail.intervalChk == intervals[index].id)
              .toList(),
          isInitiallyExpanded: true,
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: 15);
      },
      itemCount: intervals.length,
    );
  }
}

class CheckListDetailsDirectory extends StatelessWidget {
  const CheckListDetailsDirectory({
    Key? key,
    required this.title,
    required this.children,
    this.isInitiallyExpanded = false,
  }) : super(key: key);

  final String title;
  final bool isInitiallyExpanded;
  final List<CheckDetails> children;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        dividerColor: Colors.transparent,
      ),
      child: ExpansionTile(
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        initiallyExpanded: isInitiallyExpanded,
        children: children
            .mapIndexed(
              (index, _) => ProviderScope(
                overrides: [_currentDetail.overrideWithValue(children[index])],
                child: CheckDetailsCard(
                  index: index,
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

class CheckDetailsCard extends ConsumerWidget {
  const CheckDetailsCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detail = ref.watch(_currentDetail);
    final chkNo = ref.watch(
        checkInfoStateNotifierProvider.select((state) => state.info.header.id));

    return Hero(
      tag: detail.chkItemCd,
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

                                    Dialogs.showTwoAnswersDialog(
                                      context,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary,
                                      icon: Icons.help,
                                      title: "이미지 추가",
                                      message: "사진을 추가할 방법을 선택해주세요",
                                      yesTitle: "카메라",
                                      onYesPressed: () {
                                        ref
                                            .read(checkInfoStateNotifierProvider
                                                .notifier)
                                            .pickImageFromCamera(
                                                detail.chkItemCd, chkNo);
                                      },
                                      noTitle: "앨범",
                                      onNoPressed: () {
                                        ref
                                            .read(checkInfoStateNotifierProvider
                                                .notifier)
                                            .pickImagesFromGallery(
                                                detail.chkItemCd, chkNo);
                                      },
                                      onDismissed: () {},
                                    );
                                  },
                                  child: Stack(
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: LayoutConstants.paddingS,
                                        ),
                                        child: Icon(
                                          Icons.add_a_photo,
                                        ),
                                      ),
                                      // TODO: add logic for showing image counts if images are taken
                                      if (detail.images.isEmpty)
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
                                                      LayoutConstants.radiusM),
                                            ),
                                            padding: const EdgeInsets.symmetric(
                                                horizontal:
                                                    (LayoutConstants.paddingXS +
                                                            LayoutConstants
                                                                .paddingS) /
                                                        2),
                                            child: Text(
                                              detail.images.length.toString(),
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
                                Consumer(
                                  builder: (context, ref, child) {
                                    return GestureDetector(
                                      onTap: () async {
                                        // TODO: Cached Image Clear
                                        ref
                                            .read(checkInfoStateNotifierProvider
                                                .notifier)
                                            .clearDetailsImages(
                                                detail.chkItemCd);
                                      },
                                      child: const Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: LayoutConstants.paddingS,
                                        ),
                                        child: Icon(
                                          Icons.refresh,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 50,
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.symmetric(
                                horizontal: LayoutConstants.paddingM),
                            child: Text(
                              detail.chkItemNm,
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
                                      detail: detail,
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
                              child: Text(detail.remark,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText1!
                                      .copyWith(
                                        color: Theme.of(context).hintColor,
                                      )),
                            ),
                          ),
                          const SizedBox(height: LayoutConstants.spaceM),
                          Wrap(
                            alignment: WrapAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: LayoutConstants.spaceM,
                                ),
                                child: Text("${detail.methodChk} 확인 결과:"),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: LayoutConstants.spaceS,
                                  vertical: LayoutConstants.spaceM,
                                ),
                                child: CheckToggle(
                                  isSelected: List<bool>.generate(
                                      _resultOptions.length,
                                      (optionsIdx) =>
                                          _resultOptions[optionsIdx] ==
                                          detail.result),
                                  children: _resultOptions,
                                  onPressed: (clickedIdx) {
                                    ref
                                        .read(checkInfoStateNotifierProvider
                                            .notifier)
                                        .setCheckResult(detail.chkItemCd,
                                            _resultOptions[clickedIdx]);
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
