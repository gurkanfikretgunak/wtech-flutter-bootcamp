import 'package:breeze_app_clone/views/home_view.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

@override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () async {
      Navigator.pushReplacement(context, new MaterialPageRoute(builder: (context) => new HomeView()));
    });
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 239, 240, 251),
        body: Center(
          child: SizedBox(
            width: screenWidth / 2,
            child: Image.asset("images/happycloud.png"),
            ),
        ),
      ),
    );
  }
}

/*

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 239, 240, 251),
        body: Center(
          child: SizedBox(
            width: screenWidth / 2,
            child: Image.asset("images/happycloud.png"),
            ),
        ),
      ),
    );
  }
}

*/