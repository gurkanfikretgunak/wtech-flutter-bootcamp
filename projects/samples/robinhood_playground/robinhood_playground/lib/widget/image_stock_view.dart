

import 'package:flutter/material.dart';

class ImageContainerStock extends StatelessWidget {
  const ImageContainerStock({
    Key? key,
  }) : super(key: key);
  final String path = 'assets/page_two_copy.png';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration:
          BoxDecoration(image: DecorationImage(image: AssetImage(path))),
    );
  }
}
