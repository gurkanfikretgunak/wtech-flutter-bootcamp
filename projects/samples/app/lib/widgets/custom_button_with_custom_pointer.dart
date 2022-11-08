import 'package:flutter/material.dart';

class CustomButtonWithCustomPointer extends StatefulWidget {
  final Icon icon;
  final Color bgColor;
  const CustomButtonWithCustomPointer(
      {super.key, required this.icon, required this.bgColor});

  @override
  State<CustomButtonWithCustomPointer> createState() =>
      _CustomButtonWithCustomPointerState();
}

class _CustomButtonWithCustomPointerState
    extends State<CustomButtonWithCustomPointer> {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _RPSCustomPainter(color: widget.bgColor),
      child: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.height / 45),
        child: widget.icon,
      ),
    );
  }
}

class _RPSCustomPainter extends CustomPainter {
  final Color color;

  _RPSCustomPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.9416667, size.height * 0.6052083);
    path_0.quadraticBezierTo(size.width * 0.9000000, size.height * 0.7104167,
        size.width * 0.8416667, size.height * 0.8104167);
    path_0.quadraticBezierTo(size.width * 0.7833333, size.height * 0.9104167,
        size.width * 0.6697917, size.height * 0.9333333);
    path_0.quadraticBezierTo(size.width * 0.5562500, size.height * 0.9562500,
        size.width * 0.4468750, size.height * 0.9416667);
    path_0.quadraticBezierTo(size.width * 0.3375000, size.height * 0.9270833,
        size.width * 0.2406250, size.height * 0.8718750);
    path_0.quadraticBezierTo(size.width * 0.1437500, size.height * 0.8166667,
        size.width * 0.08750000, size.height * 0.7156250);
    path_0.quadraticBezierTo(size.width * 0.03125000, size.height * 0.6145833,
        size.width * 0.03125000, size.height * 0.5000000);
    path_0.quadraticBezierTo(size.width * 0.03125000, size.height * 0.3854167,
        size.width * 0.08750000, size.height * 0.2843750);
    path_0.quadraticBezierTo(size.width * 0.1437500, size.height * 0.1833333,
        size.width * 0.2416667, size.height * 0.1302083);
    path_0.quadraticBezierTo(size.width * 0.3395833, size.height * 0.07708333,
        size.width * 0.4479167, size.height * 0.05625000);
    path_0.quadraticBezierTo(size.width * 0.5562500, size.height * 0.03541667,
        size.width * 0.6677083, size.height * 0.06562500);
    path_0.quadraticBezierTo(size.width * 0.7791667, size.height * 0.09583333,
        size.width * 0.8385417, size.height * 0.1937500);
    path_0.quadraticBezierTo(size.width * 0.8979167, size.height * 0.2916667,
        size.width * 0.9406250, size.height * 0.3958333);
    path_0.quadraticBezierTo(size.width * 0.9833333, size.height * 0.5000000,
        size.width * 0.9416667, size.height * 0.6052083);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = color.withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
