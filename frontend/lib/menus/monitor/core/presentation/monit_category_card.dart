import 'package:flutter/material.dart';

import 'package:frontend/core/presentation/constants/constants.dart';
import 'package:frontend/core/presentation/widgets/widgets.dart';
import 'package:frontend/menus/monitor/core/domain/check_spot.dart';

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
      padding: const EdgeInsets.all(LayoutConstants.paddingM),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(LayoutConstants.radiusM),
          color: Colors.grey.withOpacity(.3)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(objSubNm),
          const SizedBox(height: LayoutConstants.spaceM),
          ...spots.map((spot) => SubCategoryCard(spot: spot)).toList()
        ],
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

  // TODO : 시간 지는 것을 어떻게 표현할 것인지 의견 구하기

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).scaffoldBackgroundColor,
      elevation: 1,
      child: Padding(
        padding: const EdgeInsets.all(LayoutConstants.paddingM),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              spot.objNm,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            const SizedBox(height: LayoutConstants.spaceM),
            Container(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children:
                    List<Widget>.generate(spot.checkedList.length, (index) {
                  if (spot.checkedList[index].checkedTime == "") {
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
                  } else {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: LayoutConstants.paddingXS / 2),
                      child: Circle(
                        color: Theme.of(context).colorScheme.secondary,
                        radius: LayoutConstants.radiusS,
                      ),
                    );
                  }
                }),
              ),
            ),
            const SizedBox(height: LayoutConstants.spaceM),
            Wrap(
              children: List.generate(
                spot.checkedList.length,
                (index) {
                  if (spot.checkedList[index].checkedTime == "") {
                    return const EmptyStampCard();
                  } else {
                    return TimeStampCard(item: spot.checkedList[index]);
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TimeStampCard extends StatelessWidget {
  final CheckedItem item;

  const TimeStampCard({
    Key? key,
    required this.item,
  }) : super(key: key);

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
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(LayoutConstants.radiusM),
            ),
            child: Column(
              children: [
                // TODO : MM:ss 로 FORMATTING 해주기
                Text(item.session,
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
            padding:
                const EdgeInsets.symmetric(vertical: LayoutConstants.paddingXS),
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
  const MissedStampCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      padding: const EdgeInsets.all(LayoutConstants.paddingXS),
      child: Column(
        children: [
          Container(
            width: 50,
            height: 45,
            padding: const EdgeInsets.all(LayoutConstants.paddingS),
            decoration: BoxDecoration(
              color: Theme.of(context).errorColor.withOpacity(.5),
              borderRadius: BorderRadius.circular(LayoutConstants.radiusM),
            ),
            child: Center(
              child: Text(
                "${DateTime.now().hour}시간\n경과",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    color: Theme.of(context).errorColor, fontSize: 12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
