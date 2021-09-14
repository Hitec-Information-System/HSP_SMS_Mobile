import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/check/check_info/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:collection/collection.dart';

import 'package:frontend/check/check_info/domain/check_info.dart';
import 'package:frontend/core/presentation/constants/constants.dart';
import 'package:frontend/core/presentation/widgets/widgets.dart';

class RemarkPopupCard extends HookConsumerWidget {
  const RemarkPopupCard({
    Key? key,
    required this.index,
    required this.details,
  }) : super(key: key);

  final int index;
  final CheckDetails details;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _remarkController = useTextEditingController();

    final checkInfo = ref.watch(checkInfoStateNotifierProvider.select(
      (state) => state.maybeWhen(
        loaded: (_, data) => data,
        orElse: () => CheckInfo.empty(),
      ),
    ));

    _remarkController.text = checkInfo.details[index].remark;

    return Hero(
      tag: details.chkItemCd,
      createRectTween: (begin, end) => CustomRectTween(begin: begin, end: end),
      child: Padding(
        padding: const EdgeInsets.all(LayoutConstants.paddingL),
        child: SingleChildScrollView(
          child: Material(
            color: Theme.of(context).bottomAppBarColor,
            borderRadius: BorderRadius.circular(LayoutConstants.radiusS),
            child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: LayoutConstants.paddingL,
                  vertical: LayoutConstants.paddingS,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: LayoutConstants.spaceM),
                      Text(
                        details.chkItemNm,
                      ),
                      const SizedBox(height: LayoutConstants.spaceM),
                      Container(
                        height: 150,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(LayoutConstants.radiusS),
                          color: Theme.of(context).backgroundColor,
                        ),
                        child: TextField(
                          controller: _remarkController,
                          keyboardType: TextInputType.multiline,
                          maxLines: null,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            contentPadding: EdgeInsets.only(
                              left: LayoutConstants.paddingL,
                              bottom: LayoutConstants.paddingM,
                              top: LayoutConstants.paddingM,
                              right: LayoutConstants.paddingL,
                            ),
                            hintText: "비고란",
                          ),
                        ),
                      ),
                      const SizedBox(height: LayoutConstants.spaceS),
                      Container(
                        alignment: Alignment.centerRight,
                        child: ElevatedButton(
                          onPressed: () {
                            ref
                                .read(checkInfoStateNotifierProvider.notifier)
                                .setCheckInfo(checkInfo.copyWith(
                                    details: checkInfo.details
                                        .mapIndexed((idx, detail) {
                                  if (idx == index) {
                                    return detail.copyWith(
                                      remark: _remarkController.text,
                                    );
                                  } else {
                                    return detail;
                                  }
                                }).toList()));
                            AutoRouter.of(context).pop();
                          },
                          child: const Text("확인"),
                        ),
                      )
                    ],
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
