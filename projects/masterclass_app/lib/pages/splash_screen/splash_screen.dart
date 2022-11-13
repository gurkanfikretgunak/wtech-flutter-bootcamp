import 'package:flutter/material.dart';
import 'package:masterclass_app/core/enums/app_images.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 1500), () {
      Navigator.of(context).pushNamedAndRemoveUntil('/home', (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext _) {
    return Center(
      child: Image.asset(
        PngImages.logo.path,
        scale: 2.5,
      ),
    );
  }
}
