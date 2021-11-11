import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:frontend/core/presentation/constants/constants.dart';
import 'package:frontend/core/presentation/widgets/dialogs.dart';
import 'package:frontend/menus/home/application/board_register_notifier.dart';
import 'package:frontend/menus/home/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:frontend/core/presentation/routes/app_router.gr.dart';

class BoardItemPage extends ConsumerStatefulWidget {
  const BoardItemPage({
    Key? key,
    this.enabled = true,
    this.path = "",
  }) : super(key: key);
  // REF: 원래대로라면 state를 따로 만들어서 관리하는게 맞지만 state를 추가하게 되면 가독성이 더욱 떨어지게 되어 값으로 처리
  final bool enabled;
  final String path;

  @override
  _BoardItemPageState createState() => _BoardItemPageState();
}

class _BoardItemPageState extends ConsumerState<BoardItemPage> {
  late TextEditingController titleController;
  late TextEditingController contentsController;

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      if (!widget.enabled) {
        ref
            .read(safetyBoardItemRegisterStateNotifierProvider.notifier)
            .fetchBoardItemDetails(widget.path);
      }
    });
    titleController = TextEditingController();
    contentsController = TextEditingController();
  }

  @override
  void dispose() {
    titleController.dispose();
    contentsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final boardState = ref.watch(safetyBoardItemRegisterStateNotifierProvider);

    final formKey = GlobalKey<FormState>();

    titleController.text = boardState.item.title;
    contentsController.text = boardState.item.contents;

    ref.listen<BoardRegisterState>(
      safetyBoardItemRegisterStateNotifierProvider,
      (state) {
        state.maybeWhen(
          saving: (_) {
            // Dialogs.showLoadingDialog(context);
          },
          saved: (_) async {
            await Dialogs.showOneAnswerDialog(
              context,
              color: Theme.of(context).colorScheme.secondary,
              icon: Icons.check_circle,
              title: "저장 완료",
              message: "저장을 완료하였습니다",
              yesTitle: "확인",
              onYesPressed: () {},
              onDismissed: () {
                ref
                    .read(boardStateNotifierProvider.notifier)
                    .switchToEditedState();
                context.router.popTop();
              },
            );
          },
          failure: (_, failure) async {
            await Dialogs.showOneAnswerDialog(
              context,
              color: Theme.of(context).errorColor,
              title: "오류",
              message: failure.when(
                api: (code, message) =>
                    message ?? "데이터 전송 중 에러가 발생하였습니다. 관리자에게 문의하세요.\n",
                noConnection: () => "인터넷 연결 오류\n",
                internal: (String message) => "$message\n",
              ),
              yesTitle: "확인",
              onYesPressed: () {},
              onDismissed: () {
                failure.maybeWhen(
                  internal: (_) {},
                  orElse: () {
                    context.router.popTop();
                  },
                );
              },
            );
          },
          orElse: () {},
        );
      },
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("안전신고"),
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
                      enabled: widget.enabled,
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
                        enabled: widget.enabled,
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
                      // route to image page
                      if (boardState.item.images.isNotEmpty) {
                        AutoRouter.of(context).push(
                          ImageCheckRoute(
                            images: boardState.item.images,
                          ),
                        );
                      }
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
                        if (boardState.item.images.isEmpty)
                          const SizedBox()
                        else
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
                                boardState.item.images.length.toString(),
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
                      Dialogs.showTwoAnswersDialog(
                        context,
                        color: Theme.of(context).colorScheme.secondary,
                        icon: Icons.help,
                        title: "이미지 추가",
                        message: "사진을 추가할 방법을 선택해주세요",
                        yesTitle: "카메라",
                        onYesPressed: () {
                          ref
                              .read(safetyBoardItemRegisterStateNotifierProvider
                                  .notifier)
                              .pickImageFromCamera();
                        },
                        noTitle: "앨범",
                        onNoPressed: () {
                          ref
                              .read(safetyBoardItemRegisterStateNotifierProvider
                                  .notifier)
                              .pickImagesFromGallery();
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
                      ref
                          .read(safetyBoardItemRegisterStateNotifierProvider
                              .notifier)
                          .clearImages();
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
              if (widget.enabled)
                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState?.validate() == true) {
                      Dialogs.showTwoAnswersDialog(
                        context,
                        color: Theme.of(context).colorScheme.secondary,
                        icon: Icons.help,
                        title: "점검목록 저장",
                        message: "점검내용을 저장하시겠습니까?",
                        yesTitle: "저장",
                        onYesPressed: () {
                          ref
                              .read(safetyBoardItemRegisterStateNotifierProvider
                                  .notifier)
                              .saveBoardItem(
                                titleController.text,
                                contentsController.text,
                              );
                        },
                        noTitle: "취소",
                        onNoPressed: () {},
                        onDismissed: () {},
                      );
                    }
                  },
                  child: const Text("등록"),
                )
              else
                const SizedBox(),
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
