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
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0), //<-- SEE HERE
                ),
                color: Colors.white,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 5,
                        child: SizedBox(
                          width: 300,
                          child: Image.asset(
                            CustomTextConstants().imagesPlant[index].toString(),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          color: Colors.grey[900],
                          child: Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 8, top: 15),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(CustomTextConstants().namesPlant[index]),
                                      const SizedBox(height: 5),
                                      Text(CustomTextConstants().pricePlant[index],
                                          style: Theme.of(context).textTheme.subtitle1?.copyWith(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              )),
                                    ],
                                  ),
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.add_box_rounded),
                                color: Colors.white,
                                iconSize: 45,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
