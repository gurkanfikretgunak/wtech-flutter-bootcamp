import 'package:flutter/material.dart';

class CustomPaintWidget extends StatelessWidget {
  const CustomPaintWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: CustomPaint(size: const Size(200, 200), painter: RPSCustomPainter()));
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.8156250, size.height * 0.6156250);
    path_0.quadraticBezierTo(
        size.width * 0.7312500, size.height * 0.7312500, size.width * 0.6156250, size.height * 0.8395833);
    path_0.quadraticBezierTo(
        size.width * 0.5000000, size.height * 0.9479167, size.width * 0.3677083, size.height * 0.8562500);
    path_0.quadraticBezierTo(
        size.width * 0.2354167, size.height * 0.7645833, size.width * 0.1614583, size.height * 0.6322917);
    path_0.quadraticBezierTo(
        size.width * 0.08750000, size.height * 0.5000000, size.width * 0.1520833, size.height * 0.3583333);
    path_0.quadraticBezierTo(
        size.width * 0.2166667, size.height * 0.2166667, size.width * 0.3583333, size.height * 0.1552083);
    path_0.quadraticBezierTo(
        size.width * 0.5000000, size.height * 0.09375000, size.width * 0.6302083, size.height * 0.1666667);
    path_0.quadraticBezierTo(
        size.width * 0.7604167, size.height * 0.2395833, size.width * 0.8302083, size.height * 0.3697917);
    path_0.quadraticBezierTo(
        size.width * 0.9000000, size.height * 0.5000000, size.width * 0.8156250, size.height * 0.6156250);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xffff4793).withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
