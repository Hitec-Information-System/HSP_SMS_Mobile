import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:frontend/check/check_list/presentation/widgets/widgets.dart';
import 'package:frontend/core/presentation/constants/constants.dart';

class ChecklistTabletPage extends StatelessWidget {
  const ChecklistTabletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(LayoutConstants.radiusM),
                        bottomRight: Radius.circular(LayoutConstants.radiusM),
                      )),
                  padding: const EdgeInsets.all(
                    LayoutConstants.paddingM,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                          child: ListView(
                        physics: const BouncingScrollPhysics(),
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                "시설 점검",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              const SizedBox(height: LayoutConstants.spaceS),
                              Text(
                                "시설물 > 적재장소 및 외각",
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                              const SizedBox(height: LayoutConstants.spaceL),
                              CheckInfoSection(),
                              const SizedBox(height: LayoutConstants.spaceL),
                              CheckConditionCard(label: "점검주기", children: [
                                "일상",
                                "주간",
                              ]),
                              const SizedBox(height: LayoutConstants.spaceL),
                              CheckConditionCard(label: "회차", children: [
                                "8시",
                                "12시",
                                "16시",
                                "18시",
                                "21시",
                                "4시",
                              ]),
                            ],
                          ),
                        ],
                      )),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: LayoutConstants.paddingM),
                        child: ElevatedButton(
                          onPressed: () {
                            AutoRouter.of(context).pop();
                          },
                          child: const Text(
                            "저장",
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            const Expanded(
                flex: 5,
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: LayoutConstants.paddingL,
                        vertical: LayoutConstants.paddingM),
                    child: CheckListDetailsSection(),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
