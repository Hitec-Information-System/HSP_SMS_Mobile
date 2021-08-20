import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:frontend/core/presentation/constants/layout_constants.dart';

class CheckListPage extends StatefulWidget {
  const CheckListPage({Key? key}) : super(key: key);

  @override
  _CheckListPageState createState() => _CheckListPageState();
}

class _CheckListPageState extends State<CheckListPage> {
  final _isSelected = [false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(LayoutConstants.paddingL),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const CheckStandardTitleSection(),
                const SizedBox(height: LayoutConstants.spaceL),
                const CheckStandardSection(),
                const SizedBox(height: LayoutConstants.spaceL),
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
                CheckConditionRow(label: "테스트 예제", children: []),
                const SizedBox(height: LayoutConstants.spaceM),
                const Divider(thickness: 2),
                const SizedBox(height: LayoutConstants.spaceM),
                Text(
                  "점검항목",
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: LayoutConstants.spaceL),
                Material(
                  elevation: 1,
                  borderRadius: BorderRadius.circular(LayoutConstants.radiusM),
                  color: Theme.of(context).cardColor,
                  child: Container(
                    padding: const EdgeInsets.all(32.0),
                    child: Material(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      elevation: 2,
                      borderRadius:
                          BorderRadius.circular(LayoutConstants.radiusS),
                      child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: LayoutConstants.paddingL,
                              vertical: LayoutConstants.paddingM),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "1",
                                    style:
                                        Theme.of(context).textTheme.headline6,
                                  ),
                                  const SizedBox(width: LayoutConstants.spaceL),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.only(
                                              bottom: LayoutConstants.paddingM),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              GestureDetector(
                                                onTap: () {},
                                                child: Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal:
                                                          LayoutConstants
                                                              .paddingS),
                                                  child: Icon(
                                                    Icons.add_a_photo,
                                                  ),
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {},
                                                child: Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal:
                                                          LayoutConstants
                                                              .paddingS),
                                                  child: Icon(
                                                    Icons.delete,
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
                                              horizontal:
                                                  LayoutConstants.paddingM),
                                          child: Text(
                                            "PLT의 흔들림, 낙하할 위험 없이 안정된 적재 확인.  건축물 안전휀스, 소화전, 벽면 등의 시설물 파손 상태 확인 등의 시설물 파손 상태 확인 등의 시설물 파손 상태 확인 등의 시설물 파손 상태 확인",
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        const SizedBox(
                                            height: LayoutConstants.spaceM),
                                        GestureDetector(
                                          onTap: () {
                                            // TODO: navigate to remark hero page
                                            log("remark clicked");
                                          },
                                          child: Container(
                                            height: 30,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      LayoutConstants.radiusM),
                                              color: Theme.of(context)
                                                  .backgroundColor,
                                            ),
                                            alignment: Alignment.centerLeft,
                                            padding: const EdgeInsets.symmetric(
                                                horizontal:
                                                    LayoutConstants.paddingM),
                                            child: Text("비고란",
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1!
                                                    .copyWith(
                                                      color: Theme.of(context)
                                                          .hintColor,
                                                    )),
                                          ),
                                        ),
                                        const SizedBox(
                                            height: LayoutConstants.spaceM),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text("육안 확인 결과:"),
                                            const SizedBox(
                                                width: LayoutConstants.spaceL),
                                            ToggleButtons(
                                              constraints: const BoxConstraints(
                                                minHeight: 35,
                                                minWidth: 40,
                                              ),
                                              selectedColor:
                                                  Theme.of(context).accentColor,
                                              fillColor: Theme.of(context)
                                                  .accentColor
                                                  .withOpacity(.5),
                                              hoverColor: Theme.of(context)
                                                  .accentColor
                                                  .withOpacity(.2),
                                              disabledBorderColor:
                                                  Theme.of(context)
                                                      .disabledColor,
                                              disabledColor: Theme.of(context)
                                                  .disabledColor,
                                              selectedBorderColor:
                                                  Theme.of(context).accentColor,
                                              borderWidth: 2,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      LayoutConstants.radiusM),
                                              isSelected: _isSelected,
                                              onPressed: (index) {
                                                setState(() {
                                                  for (var buttonIndex = 0;
                                                      buttonIndex <
                                                          _isSelected.length;
                                                      buttonIndex++) {
                                                    if (buttonIndex == index) {
                                                      _isSelected[buttonIndex] =
                                                          true;
                                                    } else {
                                                      _isSelected[buttonIndex] =
                                                          false;
                                                    }
                                                  }
                                                });
                                              },
                                              children: [
                                                Text("양호"),
                                                Text("불량"),
                                              ],
                                            ),
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
                )
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
    return Container(
      padding: const EdgeInsets.all(LayoutConstants.paddingS),
      height: 50,
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
        const SizedBox(width: LayoutConstants.spaceL),
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
    return Material(
      elevation: 1,
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
              label: "점검일",
              value: "2021.01.01",
            ),
            Divider(thickness: 1),
            CheckStandardRow(
              label: "점검시간",
              value: "14:25",
            ),
          ],
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
