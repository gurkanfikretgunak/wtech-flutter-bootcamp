import 'package:app/constants/custom_contants.dart';
import 'package:flutter/material.dart';

import '../views/product_detail_view.dart';

class CustomPopularProductCards extends StatefulWidget {
  const CustomPopularProductCards({Key? key, required this.heighty, required this.widthx}) : super(key: key);
  final double heighty;
  final double widthx;

  @override
  State<CustomPopularProductCards> createState() => _CustomPopularProductCardsState();
}

class _CustomPopularProductCardsState extends State<CustomPopularProductCards> {
  @override
  Widget build(BuildContext context) {
    final List<String> images = CustomTextConstants().imagesPlant;
    final List<String> names = CustomTextConstants().namesPlant;
    final List<String> price = CustomTextConstants().pricePlant;
    final List<String> details = CustomTextConstants().detailPlant;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5.0),
      height: MediaQuery.of(context).size.height * widget.heighty,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: CustomTextConstants().imagesPlant.length,
          itemBuilder: (context, index) {
            return SizedBox(
              width: MediaQuery.of(context).size.width * widget.widthx,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ProductDetailView(
                      image: images[index],
                      name: names[index],
                      price: price[index],
                      description: details[index],
                    ),
                  ));
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 2,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                width: 55,
                                height: 55,
                                color: Colors.grey[300],
                                child: Image.asset(
                                  CustomTextConstants().imagesPlant[index].toString(),
                                ),
                              ),
                            )),
                        Expanded(
                          flex: 5,
                          child: Container(
                            color: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8, top: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(CustomTextConstants().namesPlant[index],
                                      style: Theme.of(context).textTheme.subtitle1?.copyWith(
                                            color: Colors.grey[800],
                                            fontWeight: FontWeight.bold,
                                          )),
                                  const SizedBox(height: 5),
                                  Text(CustomTextConstants().pricePlant[index],
                                      style: Theme.of(context).textTheme.subtitle1?.copyWith(
                                            color: Colors.grey[900],
                                            fontWeight: FontWeight.bold,
                                          )),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
