import 'package:flutter/material.dart';
import 'package:fruits_market/core/utils/app_colors.dart';

class DashLine extends StatelessWidget {
  const DashLine({
    super.key,
    this.axis = Axis.horizontal,
    this.dashWidth = 5,
    this.dashSpace = 3,
    this.color = AppColors.lightGrey2,
    this.thickness = 1,
  });
  final Axis axis;
  final double dashWidth;
  final double dashSpace;
  final Color color;
  final double thickness;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size:
          axis == Axis.horizontal
              ? Size(double.infinity, thickness)
              : Size(thickness, double.infinity),
      painter: _DashPainter(
        axis: axis,
        dashWidth: dashWidth,
        dashSpace: dashSpace,
        color: color,
        thickness: thickness,
      ),
    );
  }
}

class _DashPainter extends CustomPainter {
  final Axis axis;
  final double dashWidth;
  final double dashSpace;
  final Color color;
  final double thickness;

  _DashPainter({
    required this.axis,
    required this.dashWidth,
    required this.dashSpace,
    required this.color,
    required this.thickness,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint =
        Paint()
          ..color = color
          ..strokeWidth = thickness;

    double start = 0;
    final isHorizontal = axis == Axis.horizontal;

    while (start < (isHorizontal ? size.width : size.height)) {
      if (isHorizontal) {
        canvas.drawLine(Offset(start, 0), Offset(start + dashWidth, 0), paint);
      } else {
        canvas.drawLine(Offset(0, start), Offset(0, start + dashWidth), paint);
      }
      start += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
