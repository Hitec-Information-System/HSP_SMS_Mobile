import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:frontend/core/presentation/constants/constants.dart';
import 'package:frontend/core/presentation/widgets/dialogs.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BoardDetailsPage extends HookConsumerWidget {
  const BoardDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = GlobalKey<FormState>();

    final titleController = useTextEditingController();
    final contentsController = useTextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("안전신고 등록"),
      ),
      body: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: LayoutConstants.paddingXL),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Form(
                key: formKey,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextFormField(
                      controller: titleController,
                      decoration: InputDecoration(
                        labelText: "제목 기재란",
                        border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(LayoutConstants.radiusM),
                        ),
                        enabledBorder: OutlineInputBorder(
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
                      ),
                      autocorrect: false,
                      validator: formValidator,
                    ),
                    const SizedBox(height: LayoutConstants.spaceL),
                    SizedBox(
                      height: 300,
                      child: TextFormField(
                        controller: contentsController,
                        maxLines: null,
                        expands: true,
                        textAlignVertical: TextAlignVertical.top,
                        decoration: InputDecoration(
                          labelText: "내용 기재란",
                          alignLabelWithHint: true,
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.circular(LayoutConstants.radiusM),
                          ),
                          enabledBorder: OutlineInputBorder(
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
                        ),
                        autocorrect: false,
                        validator: formValidator,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: LayoutConstants.spaceM),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () async {
                      // // TODO: Image page
                      // if (detail.images.isNotEmpty) {
                      //   AutoRouter.of(context).push(
                      //     ImageCheckRoute(
                      //       images: detail.images,
                      //     ),
                      //   );
                      // }
                    },
                    child: Stack(
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: LayoutConstants.paddingS,
                          ),
                          child: Icon(
                            Icons.collections,
                          ),
                        ),
                        // if (detail.images.isEmpty)
                        //   const SizedBox()
                        // else
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(
                                  LayoutConstants.radiusM),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: (LayoutConstants.paddingXS +
                                        LayoutConstants.paddingS) /
                                    2),
                            child: Text(
                              "0",
                              // detail.images.length.toString(),
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
                      // TODO: Image picking

                      Dialogs.showTwoAnswersDialog(
                        context,
                        color: Theme.of(context).colorScheme.secondary,
                        icon: Icons.help,
                        title: "이미지 추가",
                        message: "사진을 추가할 방법을 선택해주세요",
                        yesTitle: "카메라",
                        onYesPressed: () {
                          // ref
                          //     .read(checkInfoStateNotifierProvider
                          //         .notifier)
                          //     .pickImageFromCamera(
                          //         detail.chkItemCd, chkNo);
                        },
                        noTitle: "앨범",
                        onNoPressed: () {
                          // ref
                          //     .read(checkInfoStateNotifierProvider
                          //         .notifier)
                          //     .pickImagesFromGallery(
                          //         detail.chkItemCd, chkNo);
                        },
                        onDismissed: () {},
                      );
                    },
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: LayoutConstants.paddingS,
                      ),
                      child: Icon(
                        Icons.add_a_photo,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      // ref
                      //     .read(checkInfoStateNotifierProvider
                      //         .notifier)
                      //     .clearDetailsImages(detail.chkItemCd);
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
              const SizedBox(height: LayoutConstants.spaceM),
              ElevatedButton(
                onPressed: () {
                  // TODO: 로직 위치 application 으로 가져다놓기
                  if (formKey.currentState?.validate() == true) {
                    final params = {
                      "title": titleController.text,
                      "xml-txt": contentsController.text,
                      "xml-rmk": "",
                    };

                    // ref.read(authNotifierProvider.notifier).signIn(params);
                  }
                },
                child: const Text("등록"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

String? formValidator(String? value) {
  if (value == null || value.isEmpty) {
    return "값을 입력하지 않았습니다";
  } else {
    return null;
  }
}
