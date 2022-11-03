import 'package:app/constants/custom_contants.dart';
import 'package:flutter/material.dart';

class CustomProductCards extends StatefulWidget {
  const CustomProductCards({Key? key, required this.heighty, required this.widthx}) : super(key: key);
  final double heighty;
  final double widthx;

  @override
  State<CustomProductCards> createState() => _CustomProductCardsState();
}

class _CustomProductCardsState extends State<CustomProductCards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5.0),
      height: MediaQuery.of(context).size.height * widget.heighty,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: CustomTextConstants().imagesPlant.length,
          itemBuilder: (context, index) {
            return SizedBox(
              width: MediaQuery.of(context).size.width * widget.widthx,
              child: Card(
                color: Colors.blue,
                child: Column(
                  children: [
                    Expanded(
                        flex: 5,
                        child: Image.asset(
                          CustomTextConstants().imagesPlant[index].toString(),
                        )),
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.black.withOpacity(0.9),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
