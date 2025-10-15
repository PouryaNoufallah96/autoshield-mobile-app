import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AppScaffold extends Scaffold {
  AppScaffold({
    super.key,
    super.appBar,
    super.bottomNavigationBar,
    Widget? body,
    bool isTop = false,
  }) : super(
          body: _AppScaffold(
            key: key,
            isTop: isTop,
            child: body,
          ),
        );
}

class _AppScaffold extends StatelessWidget {
  const _AppScaffold({
    required this.child,
    required this.isTop,
    super.key,
  });

  final Widget? child;
  final bool isTop;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
            child: _Dot(
          isTop: isTop,
        )),
        if (child != null) child!,
      ],
    );
  }
}

class _Dot extends HookWidget {
  const _Dot({
    required this.isTop,
  });

  final bool isTop;

  @override
  Widget build(BuildContext context) {
    final animation =
        useAnimationController(duration: const Duration(seconds: 2));

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        animation.repeat(reverse: true);
      });
      return null;
    }, []);

    return RepaintBoundary(
      child: CustomPaint(
        isComplex: true,
        painter: _Painter(
          isTop: isTop,
          controller: animation,
        ),
      ),
    );
  }
}

class _Painter extends CustomPainter {
  _Painter({
    required this.isTop,
    required this.controller,
  }) : super(repaint: Listenable.merge([controller]));

  final bool isTop;
  final AnimationController controller;

  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height * .5;
    final width = size.width;

    final rows = width ~/ 10;
    final columns = height ~/ 10;
    final opacity = 50 + 8 * controller.value;
    final radius = 3 + controller.value;

    for (var column = 0; column < columns; column++) {
      for (var row = 0; row < rows; row++) {
        final offset = isTop
            ? Offset(row * 10, column * 10)
            : Offset(width - (row * 10), size.height - (column * 10));

        canvas.drawCircle(
          offset,
          radius,
          Paint()
            ..color = const Color(0xff4024D1).withValues(
              alpha: .1 * (columns - column) / opacity,
            ),
        );
      }
    }
  }

  @override
  bool shouldRepaint(_Painter oldDelegate) => true;

  @override
  bool shouldRebuildSemantics(_Painter oldDelegate) => true;
}
