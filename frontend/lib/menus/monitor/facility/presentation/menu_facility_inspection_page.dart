import 'package:flutter/material.dart';
import 'package:frontend/core/presentation/constants/constants.dart';
import 'package:frontend/core/presentation/constants/layout_constants.dart';
import 'package:frontend/menus/monitor/facility/domain/local_category_data.dart';
import 'package:frontend/menus/monitor/facility/presentation/category_card.dart';

class MenuFacilityInspectionPage extends StatelessWidget {
  const MenuFacilityInspectionPage({Key? key}) : super(key: key);

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
              Text(
                "시설물 점검",
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
              Wrap(
                children: List<Widget>.generate(
                  localBuildingData.length,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: LayoutConstants.paddingS),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: LayoutConstants.paddingS),
                      child: CategoryCard(
                        category: localBuildingData[index],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
