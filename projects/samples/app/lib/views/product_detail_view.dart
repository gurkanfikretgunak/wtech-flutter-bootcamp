import 'package:app/core/themes/custom_themes.dart';
import 'package:app/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';

class ProductDetailView extends StatefulWidget {
  const ProductDetailView({
    Key? key,
    required this.image,
    required this.name,
    required this.price,
    required this.description,
  }) : super(key: key);
  final String image;
  final String name;
  final String price;
  final String description;
  @override
  State<ProductDetailView> createState() => _ProductDetailViewState();
}

class _ProductDetailViewState extends State<ProductDetailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Stack(children: [
              _aspectRatioImage(widget.image),
              CustomWidgets.backIcon(context),
            ]),
          ),
          Expanded(flex: 2, child: _detailsComponents(widget.name, widget.price, widget.description))
        ],
      ),
    );
  }
}

AspectRatio _aspectRatioImage(images) {
  return AspectRatio(
    aspectRatio: 5 / 5,
    child: SizedBox(
      width: 480,
      height: 300,
      child: FittedBox(
        clipBehavior: Clip.antiAlias,
        fit: BoxFit.cover,
        alignment: FractionalOffset.topCenter,
        child: Image.asset(
          images,
        ),
      ),
    ),
  );
}

SingleChildScrollView _detailsComponents(names, price, description) {
  return SingleChildScrollView(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 250,
              child: Text(
                names,
                style: CustomTheme.customThemeData().textTheme.headline5?.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_border,
                        size: 35,
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 35,
                    ),
                    Text(
                      price,
                      style: CustomTheme.customThemeData().textTheme.bodyLarge,
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          description,
          textAlign: TextAlign.justify,
          style: CustomTheme.customThemeData().textTheme.subtitle1?.copyWith(
                color: Colors.white.withOpacity(0.7),
              ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    ),
  );
}
