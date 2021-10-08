import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:frontend/check/shared/providers.dart';

import 'package:frontend/core/presentation/constants/constants.dart';
import 'package:frontend/core/presentation/widgets/widgets.dart';
import 'package:frontend/menus/monitor/core/domain/check_spot.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:frontend/core/presentation/routes/app_router.gr.dart';
import 'package:shimmer/shimmer.dart';

class MonitCategoryCard extends StatelessWidget {
  const MonitCategoryCard({
    Key? key,
    required this.objSubNm,
    required this.spots,
  }) : super(key: key);

  final String objSubNm;
  final List<CheckSpot> spots;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 275,
      padding: const EdgeInsets.symmetric(
        horizontal: LayoutConstants.paddingXS,
        vertical: LayoutConstants.paddingM,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(LayoutConstants.radiusM),
          color: Theme.of(context).bottomAppBarColor),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 20, child: Text(objSubNm)),
          const SizedBox(height: LayoutConstants.spaceM),
          if (spots.isEmpty)
            ...List.generate(4, (index) => const LoadingSubCategoryCard())
                .toList()
          else
            ...spots.map((spot) => SubCategoryCard(spot: spot)).toList()
        ],
      ),
    );
  }
}

class LoadingSubCategoryCard extends StatelessWidget {
  const LoadingSubCategoryCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).cardColor,
      elevation: 1,
      child: Padding(
        padding: const EdgeInsets.all(LayoutConstants.paddingM),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 40,
            ),
            const SizedBox(height: LayoutConstants.spaceM),
            Container(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: List<Widget>.generate(8, (index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: LayoutConstants.paddingXS / 2),
                    child: Circle(
                      color: Theme.of(context)
                          .colorScheme
                          .secondary
                          .withOpacity(.3),
                      radius: LayoutConstants.radiusS,
                    ),
                  );
                }),
              ),
            ),
            const SizedBox(height: LayoutConstants.spaceM),
            Wrap(
              children: List.generate(
                8,
                (_) {
                  return Shimmer.fromColors(
                      baseColor: Colors.grey.shade400,
                      highlightColor: Colors.grey.shade300,
                      child: const EmptyStampCard());
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SubCategoryCard extends StatelessWidget {
  final CheckSpot spot;

  const SubCategoryCard({
    Key? key,
    required this.spot,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).cardColor,
      elevation: 1,
      child: Padding(
        padding: const EdgeInsets.all(LayoutConstants.paddingM),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 40,
              child: Text(
                spot.objNm,
                style: Theme.of(context).textTheme.bodyText1,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(height: LayoutConstants.spaceM),
            Container(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children:
                    List<Widget>.generate(spot.checkedList.length, (index) {
                  if (spot.checkedList[index].checkState == "NG") {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: LayoutConstants.paddingXS / 2),
                      child: Circle(
                        color: Theme.of(context).errorColor.withOpacity(.85),
                        radius: LayoutConstants.radiusS,
                      ),
                    );
                  }

                  if (spot.checkedList[index].id == "") {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: LayoutConstants.paddingXS / 2),
                      child: Circle(
                        color: Theme.of(context)
                            .colorScheme
                            .secondary
                            .withOpacity(.3),
                        radius: LayoutConstants.radiusS,
                      ),
                    );
                  }

                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: LayoutConstants.paddingXS / 2),
                    child: Circle(
                      color: Theme.of(context).colorScheme.secondary,
                      radius: LayoutConstants.radiusS,
                    ),
                  );
                }),
              ),
            ),
            const SizedBox(height: LayoutConstants.spaceM),
            Wrap(
              children: List.generate(
                spot.checkedList.length,
                (index) {
                  if (spot.checkedList[index].checkState == "NG") {
                    return MissedStampCard(
                      delayedHHmm: spot.checkedList[index].delayedHm,
                    );
                  }

                  if (spot.checkedList[index].id == "") {
                    return const EmptyStampCard();
                  }

                  return TimeStampCard(item: spot.checkedList[index]);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TimeStampCard extends ConsumerWidget {
  final CheckedItem item;

  const TimeStampCard({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 75,
      padding: const EdgeInsets.all(LayoutConstants.paddingXS),
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: () {
          // TODO: 화면 이동
          ref
              .read(checkInfoStateNotifierProvider.notifier)
              .getCheckInfo(item.id, "", item.session);
          AutoRouter.of(context).push(const CheckListRoute());
        },
        child: Column(
          children: [
            Container(
              width: 55,
              height: 45,
              padding: const EdgeInsets.all(LayoutConstants.paddingS),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.circular(LayoutConstants.radiusM),
              ),
              child: Column(
                children: [
                  Text(item.formattedSession,
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          color: Theme.of(context)
                              .textTheme
                              .bodyText1
                              ?.color
                              ?.withOpacity(.5))),
                  Text(
                    item.checkedTime,
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: LayoutConstants.paddingXS),
              child: Text(
                item.userNm,
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class EmptyStampCard extends StatelessWidget {
  const EmptyStampCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      padding: const EdgeInsets.all(LayoutConstants.paddingXS),
      child: Column(
        children: [
          Container(
            width: 55,
            height: 45,
            padding: const EdgeInsets.all(LayoutConstants.paddingS),
            decoration: BoxDecoration(
              color: Theme.of(context).hintColor.withOpacity(.1),
              borderRadius: BorderRadius.circular(LayoutConstants.radiusM),
            ),
          ),
        ],
      ),
    );
  }
}

class MissedStampCard extends StatelessWidget {
  const MissedStampCard({
    Key? key,
    required this.delayedHHmm,
  }) : super(key: key);

  final String delayedHHmm;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      padding: const EdgeInsets.all(LayoutConstants.paddingXS),
      child: Column(
        children: [
          Container(
            width: 55,
            height: 45,
            padding: const EdgeInsets.all(LayoutConstants.paddingS),
            decoration: BoxDecoration(
              color: Theme.of(context).errorColor.withOpacity(.5),
              borderRadius: BorderRadius.circular(LayoutConstants.radiusM),
            ),
            child: Center(
              child: Text(
                "$delayedHHmm\n경과",
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    ?.copyWith(color: Theme.of(context).errorColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
