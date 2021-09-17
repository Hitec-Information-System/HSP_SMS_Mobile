import 'package:flutter/material.dart';

import 'package:frontend/core/presentation/constants/constants.dart';
import 'package:frontend/core/presentation/widgets/widgets.dart';
import 'package:frontend/menus/inspection/facility/domain/local_category_data.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.category,
  }) : super(key: key);

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Container(
      // TODO: 임의값 지정한 것 바꾸기
      width: 275,
      padding: const EdgeInsets.all(LayoutConstants.paddingM),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(LayoutConstants.radiusM),
          color: Colors.grey.withOpacity(.3)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(category.contentTitle),
          const SizedBox(height: LayoutConstants.spaceM),
          ...category.subs
              .map((sub) => SubCategoryCard(subCategory: sub))
              .toList()
        ],
      ),
    );
  }
}

class SubCategoryCard extends StatelessWidget {
  final SubCategory subCategory;

  const SubCategoryCard({
    Key? key,
    required this.subCategory,
  }) : super(key: key);

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
              subCategory.cardTitle,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            const SizedBox(height: LayoutConstants.spaceM),
            Container(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children:
                    List<Widget>.generate(subCategory.totalCount, (index) {
                  if (index + 1 <= subCategory.timeStamps.length) {
                    if (subCategory.timeStamps[index] != null) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: LayoutConstants.paddingXS / 2),
                        child: Circle(
                          color: Theme.of(context).colorScheme.secondary,
                          radius: LayoutConstants.radiusS,
                        ),
                      );
                    } else {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: LayoutConstants.paddingXS / 2),
                        child: Circle(
                          color: Theme.of(context).errorColor.withOpacity(.85),
                          radius: LayoutConstants.radiusS,
                        ),
                      );
                    }
                  } else {
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
                }),
              ),
            ),
            const SizedBox(height: LayoutConstants.spaceM),
            Wrap(
              children: List.generate(
                subCategory.totalCount,
                (index) {
                  if (index <= subCategory.timeStamps.length - 1) {
                    if (subCategory.timeStamps[index] != null) {
                      return TimeStampCard(
                          stamp: subCategory.timeStamps[index]!);
                    } else {
                      return const MissedStampCard();
                    }
                  } else {
                    return const EmptyStampCard();
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
  final TimeStamp stamp;

  const TimeStampCard({
    Key? key,
    required this.stamp,
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
                Text(stamp.standardTime,
                    style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        color: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.color
                            ?.withOpacity(.5))),
                Text(
                  stamp.checkTime,
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
              stamp.checkedBy,
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
