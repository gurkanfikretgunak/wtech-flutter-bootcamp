import 'package:flutter/material.dart';

import '../../core/constants/constants.dart';

class CustomImageViewer extends StatelessWidget {
  const CustomImageViewer({
    Key? key,
    this.assetPath,
    this.url,
    this.color,
    this.fit,
    this.alignment,
    this.height,
    this.width,
  }) : super(key: key);

  final String? assetPath;
  final String? url;
  final Color? color;
  final BoxFit? fit;
  final Alignment? alignment;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    ConstantsClass constants = ConstantsClass.instance;

    if (assetPath == null || (assetPath!).isEmpty) {
      return Image.network(
        url ?? constants.viewerImageUrl,
        fit: BoxFit.cover,
      );
    } else {
      return Image.asset(
        assetPath ?? constants.viewerImageAssetPath,
        height: height,
        width: width,
        fit: fit ?? BoxFit.cover,
        alignment: alignment ?? Alignment.center,
        color: color,
      );
    }
  }
}
