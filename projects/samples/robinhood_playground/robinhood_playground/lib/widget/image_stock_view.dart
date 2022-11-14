

import 'package:flutter/material.dart';
import 'package:robinhood_playground/product/assets/image_path.dart';

class ImageContainerStock extends StatelessWidget {
  const ImageContainerStock({
    Key? key,
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration:
          BoxDecoration(image: DecorationImage(image: AssetImage(ImagePath.instance.two))),
    );
  }
}
