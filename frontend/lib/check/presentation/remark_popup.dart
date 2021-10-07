import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/check/domain/check_info.dart';
import 'package:frontend/check/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:frontend/core/presentation/constants/constants.dart';
import 'package:frontend/core/presentation/widgets/widgets.dart';

class RemarkPopupCard extends HookConsumerWidget {
  const RemarkPopupCard({
    Key? key,
    required this.detail,
  }) : super(key: key);

  final CheckDetails detail;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print("popup built");

    final _remarkController = useTextEditingController(
      text: detail.remark,
    );

    return Hero(
      tag: detail.chkItemCd,
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
                        detail.chkItemNm,
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
                          autofocus: true,
                          keyboardType: TextInputType.multiline,
                          textInputAction: TextInputAction.done,
                          onSubmitted: (value) {
                            if (value.isNotEmpty) {
                              ref
                                  .read(checkDetailsProvider.notifier)
                                  .setCheckRemark(
                                      detail.chkItemCd, _remarkController.text);
                              AutoRouter.of(context).pop();
                            }
                          },
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              AutoRouter.of(context).pop();
                            },
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                              Theme.of(context).backgroundColor,
                            )),
                            child: Text(
                              "취소",
                              style: TextStyle(
                                  color:
                                      Theme.of(context).colorScheme.secondary),
                            ),
                          ),
                          const SizedBox(width: LayoutConstants.spaceM),
                          ElevatedButton(
                            onPressed: () {
                              ref
                                  .read(checkDetailsProvider.notifier)
                                  .setCheckRemark(
                                      detail.chkItemCd, _remarkController.text);
                              AutoRouter.of(context).pop();
                            },
                            child: const Text(
                              "확인",
                            ),
                          ),
                        ],
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
