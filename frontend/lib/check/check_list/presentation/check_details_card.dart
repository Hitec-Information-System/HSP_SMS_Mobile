import 'package:flutter/material.dart';
import 'package:frontend/check/check_list/domain/check_details.dart';

import 'package:frontend/check/check_list/presentation/remark_popup.dart';
import 'package:frontend/core/presentation/constants/constants.dart';
import 'package:frontend/core/presentation/routes/hero_dialog_router.dart';
import 'package:frontend/core/presentation/widgets/widgets.dart';

class CheckDetailsCard extends StatefulWidget {
  const CheckDetailsCard({
    Key? key,
    required this.index,
    required this.details,
  }) : super(key: key);

  // Todo: change these fields to one entity
  final int index;
  final CheckDetails details;

  @override
  _CheckDetailsCardState createState() => _CheckDetailsCardState();
}

class _CheckDetailsCardState extends State<CheckDetailsCard> {
  String? _remark;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: widget.details.id,
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
                  vertical: LayoutConstants.paddingM),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        (widget.index + 1).toString(),
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
                                        if (widget.details.images.isEmpty)
                                          Container()
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
                                                widget.details.images.length
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
                                widget.details.name,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            const SizedBox(height: LayoutConstants.spaceM),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context)
                                    .push(
                                  HeroDialogRouter(
                                    builder: (context) => Center(
                                      child: RemarkPopupCard(
                                        details: widget.details,
                                      ),
                                    ),
                                  ),
                                )
                                    .then((_) {
                                  setState(() {
                                    print("setstate!");
                                  });
                                });
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
                                child: Text(_remark ?? "비고란",
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
                                Text("${widget.details.method} 확인 결과:"),
                                const SizedBox(width: LayoutConstants.spaceL),
                                ToggleButtons(
                                  constraints: const BoxConstraints(
                                    minHeight: 35,
                                    minWidth: 40,
                                  ),
                                  selectedColor: Theme.of(context).accentColor,
                                  fillColor: Theme.of(context)
                                      .accentColor
                                      .withOpacity(.5),
                                  hoverColor: Theme.of(context)
                                      .accentColor
                                      .withOpacity(.2),
                                  disabledBorderColor:
                                      Theme.of(context).disabledColor,
                                  disabledColor:
                                      Theme.of(context).disabledColor,
                                  selectedBorderColor:
                                      Theme.of(context).accentColor,
                                  borderWidth: 2,
                                  borderRadius: BorderRadius.circular(
                                      LayoutConstants.radiusM),
                                  isSelected: widget.details.checkResult,
                                  onPressed: (index) {
                                    setState(() {
                                      print("setstate 2!");
                                      for (var buttonIndex = 0;
                                          buttonIndex <
                                              widget.details.checkResult.length;
                                          buttonIndex++) {
                                        if (buttonIndex == index) {
                                          widget.details
                                              .checkResult[buttonIndex] = true;
                                        } else {
                                          widget.details
                                              .checkResult[buttonIndex] = false;
                                        }
                                      }
                                    });
                                  },
                                  children: const [
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
    );
  }
}
