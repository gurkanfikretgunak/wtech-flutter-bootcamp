import 'package:app/constants/custom_contants.dart';
import 'package:app/views/product_detail_view.dart';
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
    final List<String> images = CustomTextConstants().imagesPlant;
    final List<String> names = CustomTextConstants().namesPlant;
    final List<String> price = CustomTextConstants().pricePlant;
    final List<String> details = CustomTextConstants().detailPlant;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5.0),
      height: MediaQuery.of(context).size.height * widget.heighty,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: images.length,
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
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 5,
                          child: SizedBox(
                            width: 300,
                            child: Image.asset(
                              images[index].toString(),
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
                                        Text(names[index]),
                                        const SizedBox(height: 5),
                                        Text(price[index],
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
              ),
            );
          }),
    );
  }
}
