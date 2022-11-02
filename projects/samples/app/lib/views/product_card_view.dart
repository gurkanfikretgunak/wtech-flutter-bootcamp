import 'package:app/core/extension/context_extension.dart';
import 'package:app/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class ProductCardView extends StatelessWidget {
  const ProductCardView(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.subTitle,
      required this.price});

  final String imagePath;
  final String title;
  final String subTitle;
  final String price;
  @override
  Widget build(BuildContext context) {
    return CustomCard(
      height: context.dynamicHeight(0.3),
      width: context.dynamicWidth(0.4),
      child: Padding(
        padding: context.paddingAllLow,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 6,
              child: Image.network(imagePath),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        color: Colors.black87, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        subTitle,
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            color: Colors.black87, fontWeight: FontWeight.w300),
                      ),
                      Text(
                        price,
                        style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            color: Colors.orange, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
