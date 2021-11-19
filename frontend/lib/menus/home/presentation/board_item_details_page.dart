import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:frontend/menus/home/shared/providers.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:frontend/core/presentation/constants/constants.dart';
import 'package:frontend/core/presentation/routes/app_router.gr.dart';
import 'package:frontend/menus/home/application/board_details_notifier.dart';

// TextField 때문에 화면을 둘로 분리함
class BoardItemDetailsPage extends ConsumerStatefulWidget {
  const BoardItemDetailsPage({
    Key? key,
    required this.title,
    required this.path,
    required this.provider,
  }) : super(key: key);

  final String path;
  final AutoDisposeStateNotifierProvider<BoardDetailsStateNotifier,
      BoardDetailsState> provider;

  final String title;

  @override
  _BoardItemDetailsPageState createState() => _BoardItemDetailsPageState();
}

class _BoardItemDetailsPageState extends ConsumerState<BoardItemDetailsPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      ref.read(widget.provider.notifier).fetchBoardItemDetails(widget.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    final boardState = ref.watch(widget.provider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(widget.title),
      ),
      body: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: LayoutConstants.paddingXL),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  vertical: LayoutConstants.paddingL,
                  horizontal: LayoutConstants.marginM,
                ),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(LayoutConstants.radiusM),
                ),
                child: Text(boardState.item.title),
              ),
              const SizedBox(height: LayoutConstants.spaceL),
              Container(
                  width: double.infinity,
                  height: boardState.item.board == safetyFlag ? 300 : null,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius:
                        BorderRadius.circular(LayoutConstants.radiusM),
                  ),
                  alignment: boardState.item.board == safetyFlag
                      ? Alignment.topCenter
                      : Alignment.center,
                  child: Html(
                    data: boardState.item.contents,
                    onLinkTap: (url, context, attributes, element) async {
                      if (url != null) {
                        if (await canLaunch(url)) {
                          await launch(url);
                        }
                      }
                    },
                  )),
              const SizedBox(height: LayoutConstants.spaceM),
              if (boardState.item.board == safetyFlag)
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
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: LayoutConstants.paddingS,
                      ),
                      child: Icon(
                        Icons.add_a_photo,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: LayoutConstants.paddingS,
                      ),
                      child: Icon(
                        Icons.refresh,
                      ),
                    ),
                  ],
                ),
              const SizedBox(height: LayoutConstants.spaceM),
            ],
          ),
        ),
      ),
    );
  }
}
