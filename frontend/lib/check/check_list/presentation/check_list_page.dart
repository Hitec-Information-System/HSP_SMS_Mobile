import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';
import 'package:frontend/check/check_list/domain/tmp_check_details_list.dart';
import 'package:frontend/check/check_list/presentation/check_details_card.dart';
import 'package:frontend/core/presentation/constants/constants.dart';

import 'package:frontend/core/presentation/constants/layout_constants.dart';

class CheckListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(LayoutConstants.paddingM),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const CheckStandardTitleSection(),
                const SizedBox(height: LayoutConstants.spaceS),
                const CheckStandardSection(),
                const SizedBox(height: LayoutConstants.spaceS),
                CheckConditionRow(label: "점검주기", children: [
                  "일상",
                  "주간",
                ]),
                CheckConditionRow(label: "회차", children: [
                  "8시",
                  "12시",
                  "16시",
                  "18시",
                  "21시",
                  "4시",
                ]),
                // CheckConditionRow(label: "테스트 예제", children: []),
                const SizedBox(height: LayoutConstants.spaceM),
                const Divider(thickness: 2),
                const SizedBox(height: LayoutConstants.spaceM),
                Row(
                  children: [
                    Text(
                      "점검항목 : ${tmpCheckDetails.length}",
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    ElevatedButton(
                        onPressed: () {
                          // TODO: save check results
                          AutoRouter.of(context).pop();
                        },
                        child: const Text("저장"))
                  ],
                ),
                const SizedBox(height: LayoutConstants.spaceXS),
                const CheckListDetailsSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CheckConditionRow extends StatefulWidget {
  const CheckConditionRow({
    Key? key,
    required this.label,
    required this.children,
  }) : super(key: key);

  final String label;

  final List<String> children;

  @override
  _CheckConditionRowState createState() => _CheckConditionRowState();
}

class _CheckConditionRowState extends State<CheckConditionRow> {
  late List<bool> _isSelected;

  @override
  void initState() {
    if (widget.children.isNotEmpty) {
      _isSelected = widget.children.map((_) => false).toList();
    } else {
      _isSelected = [false];
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: Row(
        children: [
          Text(
            widget.label,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  color: Theme.of(context).hintColor,
                ),
          ),
          const Spacer(),
          ToggleButtons(
            constraints: const BoxConstraints(
              minHeight: 35,
              minWidth: 40,
            ),
            selectedColor: Theme.of(context).accentColor,
            fillColor: Theme.of(context).accentColor.withOpacity(.5),
            hoverColor: Theme.of(context).accentColor.withOpacity(.2),
            disabledBorderColor: Theme.of(context).disabledColor,
            disabledColor: Theme.of(context).disabledColor,
            selectedBorderColor: Theme.of(context).accentColor,
            borderWidth: 2,
            borderRadius: BorderRadius.circular(LayoutConstants.radiusM),
            isSelected: _isSelected,
            // ! this toggle button will be disabled when onPressed is null
            onPressed: widget.children.isNotEmpty
                ? (index) {
                    setState(() {
                      for (var buttonIndex = 0;
                          buttonIndex < _isSelected.length;
                          buttonIndex++) {
                        if (buttonIndex == index) {
                          _isSelected[buttonIndex] = true;
                        } else {
                          _isSelected[buttonIndex] = false;
                        }
                      }
                    });
                  }
                : null,
            children: widget.children.isNotEmpty
                ? widget.children.map((label) => Text(label)).toList()
                : const [Text("없음")],
          ),
        ],
      ),
    );
  }
}

class CheckConditionCard extends StatefulWidget {
  const CheckConditionCard({
    Key? key,
    required this.label,
    required this.children,
  }) : super(key: key);

  final String label;

  final List<String> children;

  @override
  _CheckConditionCardState createState() => _CheckConditionCardState();
}

class _CheckConditionCardState extends State<CheckConditionCard> {
  late List<bool> _isSelected;

  @override
  void initState() {
    if (widget.children.isNotEmpty) {
      _isSelected = widget.children.map((_) => false).toList();
    } else {
      _isSelected = [false];
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          widget.label,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                color: Theme.of(context).hintColor,
              ),
        ),
        Container(
          alignment: Alignment.centerRight,
          child: ToggleButtons(
            constraints: const BoxConstraints(
              minHeight: 35,
              minWidth: 40,
            ),
            selectedColor: Theme.of(context).accentColor,
            fillColor: Theme.of(context).accentColor.withOpacity(.5),
            hoverColor: Theme.of(context).accentColor.withOpacity(.2),
            disabledBorderColor: Theme.of(context).disabledColor,
            disabledColor: Theme.of(context).disabledColor,
            selectedBorderColor: Theme.of(context).accentColor,
            borderWidth: 2,
            borderRadius: BorderRadius.circular(LayoutConstants.radiusM),
            isSelected: _isSelected,
            // ! this toggle button will be disabled when onPressed is null
            onPressed: widget.children.isNotEmpty
                ? (index) {
                    setState(() {
                      for (var buttonIndex = 0;
                          buttonIndex < _isSelected.length;
                          buttonIndex++) {
                        if (buttonIndex == index) {
                          _isSelected[buttonIndex] = true;
                        } else {
                          _isSelected[buttonIndex] = false;
                        }
                      }
                    });
                  }
                : null,
            children: widget.children.isNotEmpty
                ? widget.children.map((label) => Text(label)).toList()
                : const [Text("없음")],
          ),
        ),
      ],
    );
  }
}

class CheckStandardTitleSection extends StatelessWidget {
  const CheckStandardTitleSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(LayoutConstants.paddingM),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(LayoutConstants.radiusM),
            color: Theme.of(context).accentColor,
          ),
          child: const Icon(
            Icons.home,
            color: Colors.white,
            size: 35,
          ),
        ),
        const SizedBox(width: LayoutConstants.spaceM),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "시설 점검",
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: LayoutConstants.spaceS),
            Text(
              "시설물 > 적재장소 및 외각",
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        )
      ],
    );
  }
}

class CheckStandardSection extends StatelessWidget {
  const CheckStandardSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: LayoutConstants.paddingS),
      child: Material(
        elevation: 2,
        borderRadius: BorderRadius.circular(LayoutConstants.radiusM),
        color: Theme.of(context).cardColor,
        child: Padding(
          padding: const EdgeInsets.all(LayoutConstants.paddingL),
          child: Column(
            children: const [
              CheckStandardRow(
                label: "시설물",
                value: "외부 물류창고 및 서편 외각",
              ),
              Divider(thickness: 1),
              CheckStandardRow(
                label: "작성자",
                value: "홍길동",
              ),
              Divider(thickness: 1),
              CheckStandardRow(
                label: "점검시간",
                value: "2021.01.01 14:25",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CheckStandardRow extends StatelessWidget {
  const CheckStandardRow({
    Key? key,
    required this.label,
    required this.value,
  }) : super(key: key);

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
                color: Theme.of(context).hintColor,
              ),
        ),
        const Spacer(),
        Text(
          value,
          textAlign: TextAlign.right,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    );
  }
}

class CheckListDetailsSection extends StatelessWidget {
  const CheckListDetailsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: LayoutConstants.paddingM,
          vertical: LayoutConstants.paddingS),
      child: Material(
        elevation: 1,
        borderRadius: BorderRadius.circular(LayoutConstants.radiusM),
        color: Theme.of(context).cardColor,
        child: Padding(
            padding: const EdgeInsets.all(LayoutConstants.paddingS),
            child: Column(
              children: tmpCheckDetails
                  .mapIndexed((index, element) => CheckDetailsCard(
                      index: index, details: tmpCheckDetails[index]))
                  .toList(),
            )),
      ),
    );
  }
}
