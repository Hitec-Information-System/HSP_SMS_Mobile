import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:frontend/core/domain/added_image.dart';

class ImageCheckPage extends StatefulWidget {
  const ImageCheckPage({
    Key? key,
    required this.images,
  }) : super(key: key);

  final List<AddedImage> images;

  @override
  _ImageCheckPageState createState() => _ImageCheckPageState();
}

class _ImageCheckPageState extends State<ImageCheckPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _translationAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: kThemeAnimationDuration);

    _translationAnimation =
        Tween<Offset>(begin: Offset.zero, end: const Offset(0, -1)).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.ease),
    );

    _fadeAnimation = Tween<double>(begin: 1, end: 0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.ease),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      direction: DismissDirection.down,
      onDismissed: (_) => AutoRouter.of(context).pop(),
      child: Stack(
        children: [
          PageView.builder(
            itemBuilder: (context, index) {
              return InteractiveViewer(
                onInteractionStart: (_) {
                  _animationController.forward();
                },
                onInteractionEnd: (_) {
                  _animationController.reverse();
                },
                child: Container(
                  alignment: Alignment.center,
                  child: widget.images[index].isRemote
                      ? Image.network(widget.images[index].url)
                      : Image.file(File(widget.images[index].url)),
                ),
              );
            },
            itemCount: widget.images.length,
          ),
          Positioned(
            top: 30,
            right: 30,
            child: AnimatedBuilder(
              animation: _animationController,
              builder: (context, child) {
                return FadeTransition(
                  opacity: _fadeAnimation,
                  child: SlideTransition(
                    position: _translationAnimation,
                    child: child,
                  ),
                );
              },
              child: GestureDetector(
                onTap: () => AutoRouter.of(context).pop(),
                child: const Icon(
                  Icons.close,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
