import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:frontend/check/domain/check_info.dart';
import 'package:frontend/check/presentation/remark_popup.dart';
import 'package:frontend/check/presentation/widgets.dart';
import 'package:frontend/check/shared/providers.dart';
import 'package:frontend/core/presentation/constants/constants.dart';
import 'package:frontend/core/presentation/routes/app_router.gr.dart';
import 'package:frontend/core/presentation/routes/hero_dialog_router.dart';
import 'package:frontend/core/presentation/widgets/dialogs.dart';
import 'package:frontend/core/presentation/widgets/widgets.dart';

final _currentDetail =
    Provider<CheckDetails>((ref) => throw UnimplementedError());

const _resultOptions = ["양호", "미흡", "불량", "미점검"];

class CheckListDetailsSection extends HookConsumerWidget {
  const CheckListDetailsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print("list rebuilt");

    final scrollController = useScrollController();

    final intervals = ref.watch(
        checkInfoStateNotifierProvider.select((state) => state.info.intervals));

    SchedulerBinding.instance?.addPostFrameCallback((_) {
      scrollController.animateTo(scrollController.position.minScrollExtent,
          duration: const Duration(milliseconds: 400),
          curve: Curves.fastOutSlowIn);
    });

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      controller: scrollController,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: LayoutConstants.paddingS,
          vertical: LayoutConstants.paddingM,
        ),
        child: ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return CheckListDetailsDirectory(
              id: intervals[index].id,
              title: intervals[index].name,
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(height: LayoutConstants.spaceL);
          },
          itemCount: intervals.length,
        ),
      ),
    );
  }
}

class CheckListDetailsDirectory extends ConsumerWidget {
  const CheckListDetailsDirectory({
    Key? key,
    required this.id,
    required this.title,
  }) : super(key: key);

  final String id;
  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print("directory items built");

    final directoryItems = ref.watch(checkInfoStateNotifierProvider.select(
        (state) => state.info.details
            .where((detail) => detail.intervalChk == id)
            .toList()));

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
        initiallyExpanded: true,
        children: directoryItems
            .mapIndexed(
              (index, _) => ProviderScope(
                overrides: [
                  _currentDetail.overrideWithValue(directoryItems[index])
                ],
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
                                    // TODO: Image page
                                    if (detail.images.isNotEmpty) {
                                      AutoRouter.of(context).push(
                                        ImageCheckRoute(
                                          images: detail.images,
                                        ),
                                      );
                                    }
                                  },
                                  child: Stack(
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: LayoutConstants.paddingS,
                                        ),
                                        child: Icon(
                                          Icons.collections,
                                        ),
                                      ),
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
                                  child: const Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: LayoutConstants.paddingS,
                                    ),
                                    child: Icon(
                                      Icons.add_a_photo,
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () async {
                                    // TODO: Cached Image Clear
                                    ref
                                        .read(checkInfoStateNotifierProvider
                                            .notifier)
                                        .clearDetailsImages(detail.chkItemCd);
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
                          Padding(
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
                              child: Text(
                                detail.remark == ""
                                    ? "특이사항 기재란"
                                    : detail.remark,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: detail.remark == ""
                                      ? Theme.of(context).hintColor
                                      : Theme.of(context)
                                          .textTheme
                                          .bodyText2
                                          ?.color,
                                ),
                              ),
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
                                  onPressed: (int index) {
                                    ref
                                        .read(checkInfoStateNotifierProvider
                                            .notifier)
                                        .setCheckResult(detail.chkItemCd,
                                            _resultOptions[index]);
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
