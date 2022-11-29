import 'package:flutter/material.dart';

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
    if (assetPath == null || (assetPath!).isEmpty) {
      return Image.network(
        url ??
            "https://www.arceyazilim.com/uploads/images/201702/error-code-18.jpeg",
        fit: BoxFit.contain,
      );
    } else {
      return Image.asset(
        assetPath ?? "assets/error.jpg",
        height: height,
        width: width,
        fit: fit ?? BoxFit.cover,
        alignment: alignment ?? Alignment.center,
        color: color,
      );
    }
  }
}
