import 'package:flutter/cupertino.dart';

extension GlobalKeyX on GlobalKey {
  Rect? get globalPaintBounds {
    final renderObject = currentContext?.findRenderObject();
    final translation = renderObject?.getTransformTo(null).getTranslation();
    if (translation != null) {
      return renderObject!.paintBounds
          .shift(Offset(translation.x, translation.y));
    } else {
      return null;
    }
  }

  Offset get offset {
    final renderObject = currentContext?.findRenderObject() as RenderBox?;
    return renderObject!.localToGlobal(Offset.zero);
  }
}
