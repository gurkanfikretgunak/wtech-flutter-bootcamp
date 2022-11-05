import 'package:flutter/material.dart';

String from = "IST";
String to = "ANK";
List<String> Destination = [
  from,
  to,
];

class TicketCards extends StatelessWidget {
  const TicketCards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipPath(
            clipper: DolDurmaClipper(right: 40, holeRadius: 20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                color: Colors.white54,
              ),
              width: 300,
              height: 95,
              padding: EdgeInsets.all(15),
              child: Text("$from - $to"),
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ]);
  }
}

class DolDurmaClipper extends CustomClipper<Path> {
  DolDurmaClipper({required this.right, required this.holeRadius});

  final double right;
  final double holeRadius;

  @override
  Path getClip(Size size) {
    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width - right - holeRadius, 0.0)
      ..arcToPoint(
        Offset(size.width - right, 0),
        clockwise: false,
        radius: Radius.circular(1),
      )
      ..lineTo(size.width, 0.0)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width - right, size.height)
      ..arcToPoint(
        Offset(size.width - right - holeRadius, size.height),
        clockwise: false,
        radius: Radius.circular(1),
      );

    path.lineTo(0.0, size.height);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(DolDurmaClipper oldClipper) => true;
}
