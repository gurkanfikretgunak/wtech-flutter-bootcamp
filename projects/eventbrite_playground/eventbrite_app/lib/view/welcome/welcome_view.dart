import 'package:eventbrite_app/widgets/custom_bottom_navigation_bar.dart';
import 'package:eventbrite_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3))
        .then((value) => {FlutterNativeSplash.remove()});
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: CustomBottomNavigationBar(
          currentIndex: BottomNavigationItem.home.index,
        ),
        body: SafeArea(
          child: SizedBox(
            height: size.height,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Hello',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      'Let\'s find your next unforgettable event.\nChoose a location below to get started.',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/get_started.png'),
                      const SizedBox(height: 20),
                      CustomElevatedButton(
                        color: const Color(0xFFC14D25),
                        onPressed: () {},
                        text: 'Pick a city',
                        textStyle: const TextStyle(fontWeight: FontWeight.w900),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.my_location),
                          TextButton(
                            onPressed: () {},
                            child: const Text('Use my current location'),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
