import 'package:flutter/material.dart';

import 'package:frontend/core/presentation/constants/constants.dart';

class SafetyReportPage extends StatelessWidget {
  const SafetyReportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(LayoutConstants.paddingM),
              child: TextField(
                // controller: ,
                keyboardType: TextInputType.multiline,
                textInputAction: TextInputAction.done,
                onSubmitted: (value) {},
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(LayoutConstants.radiusM),
                  ),
                  // focusedBorder: OutlineInputBorder(
                  //   borderRadius:
                  //       BorderRadius.circular(LayoutConstants.radiusM),
                  // ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(LayoutConstants.radiusM),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(LayoutConstants.radiusM),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(LayoutConstants.radiusM),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: LayoutConstants.paddingL,
                    vertical: LayoutConstants.paddingM,
                  ),
                  hintText: "제목 기재란",
                ),
              ),
            ),
            const SizedBox(height: LayoutConstants.spaceL),
            Padding(
              padding: const EdgeInsets.all(LayoutConstants.paddingM),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(LayoutConstants.radiusM),
                ),
                height: MediaQuery.of(context).size.height / 2,
                alignment: Alignment.topLeft,
                child: TextField(
                  maxLines: null,
                  decoration: InputDecoration(
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: LayoutConstants.paddingL,
                      vertical: LayoutConstants.paddingM,
                    ),
                    hintText: "내용 기재란",
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
