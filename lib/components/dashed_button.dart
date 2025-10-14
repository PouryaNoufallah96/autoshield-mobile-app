import 'package:flutter/material.dart';

class DashedOutlinedButton extends StatelessWidget {
  const DashedOutlinedButton({
    required this.onPressed,
    required this.child,
    super.key,
    this.radius = 12,
    this.strokeWidth = 1.5,
    this.dash = const [6, 3],
    this.padding = const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
  });

  final VoidCallback? onPressed;
  final Widget child;
  final double radius;
  final double strokeWidth;
  final List<double> dash;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    final color = onPressed == null
        ? Theme.of(context).disabledColor
        : Theme.of(context).colorScheme.primary;

    return LayoutBuilder(builder: (context, c) {
      return SizedBox(
        width: c.maxWidth,
        child: Stack(
          children: [
            OutlinedButton(
              onPressed: onPressed,
              style: OutlinedButton.styleFrom(
                side: BorderSide.none,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(radius),
                ),
                padding: padding,
              ),
              child: child,
            ),
            Positioned.fill(
              child: IgnorePointer(
                child: CustomPaint(
                  painter: _DashedBorderPainter(
                    color: color,
                    strokeWidth: strokeWidth,
                    radius: radius,
                    dashArray: dash,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}

class _DashedBorderPainter extends CustomPainter {
  _DashedBorderPainter({
    required this.color,
    required this.strokeWidth,
    required this.radius,
    required this.dashArray,
  });

  final Color color;
  final double strokeWidth;
  final double radius;
  final List<double> dashArray;

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTWH(
      strokeWidth / 2,
      strokeWidth / 2,
      size.width - strokeWidth,
      size.height - strokeWidth,
    );

    final rrect = RRect.fromRectAndRadius(rect, Radius.circular(radius));
    final path = Path()..addRRect(rrect);

    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;

    final dashed = _dashPath(path, dashArray);
    canvas.drawPath(dashed, paint);
  }

  Path _dashPath(Path source, List<double> dashArray) {
    final dashed = Path();
    for (final metric in source.computeMetrics()) {
      var distance = 0;
      var index = 0;
      while (distance < metric.length) {
        final len = dashArray[index % dashArray.length];
        final isDraw = index.isEven;
        final end = (distance + len).clamp(0, metric.length).toDouble();
        if (isDraw) {
          dashed.addPath(
              metric.extractPath(distance.toDouble(), end), Offset.zero);
        }
        distance = end.toInt();
        index++;
      }
    }
    return dashed;
  }

  @override
  bool shouldRepaint(covariant _DashedBorderPainter oldDelegate) {
    return oldDelegate.color != color ||
        oldDelegate.strokeWidth != strokeWidth ||
        oldDelegate.radius != radius ||
        oldDelegate.dashArray != dashArray;
  }
}
