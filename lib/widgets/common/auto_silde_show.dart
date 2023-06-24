import 'package:flutter/material.dart';
import '../../screens/base_screen.dart';

class HandleAutoSlide extends StatefulWidget {
  const HandleAutoSlide({
    super.key,
    required this.numberOfItems,
    required this.controller,
    required this.child,
    required this.enableAutoSliding,
    required this.durationAutoSliding,
  });

  final ScrollController controller;
  final bool enableAutoSliding;
  final int numberOfItems;
  final int? durationAutoSliding;
  final Widget child;

  @override
  State<HandleAutoSlide> createState() => _HandleAutoSlideState();
}

class _HandleAutoSlideState extends BaseScreen<HandleAutoSlide> {
  ScrollController get controller => widget.controller;

  @override
  void afterFirstLayout(BuildContext context) {
    animateToMaxMin();
  }

  void animateToMaxMin() {
    if (widget.enableAutoSliding) {
      controller
          .animateTo(
        controller.position.maxScrollExtent,
        duration: Duration(
            seconds: widget.durationAutoSliding ?? (widget.numberOfItems * 5)),
        curve: Curves.linear,
      )
          .then((value) {
        controller.jumpTo(controller.position.minScrollExtent);
        animateToMaxMin();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
