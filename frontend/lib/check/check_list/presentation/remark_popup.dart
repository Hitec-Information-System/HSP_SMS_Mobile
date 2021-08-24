import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:frontend/check/check_list/domain/check_details.dart';
import 'package:frontend/core/presentation/constants/constants.dart';
import 'package:frontend/core/presentation/widgets/widgets.dart';

class RemarkPopupCard extends HookWidget {
  const RemarkPopupCard({
    Key? key,
    required this.details,
  }) : super(key: key);

  final CheckDetails details;

  @override
  Widget build(BuildContext context) {
    final _remarkController = useTextEditingController();

    return Hero(
      tag: details.id,
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
                        details.name,
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
                            // TODO: change remark value

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
