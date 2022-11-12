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
    Future.delayed(const Duration(seconds: 3)).then((value) => {FlutterNativeSplash.remove()});
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: CustomBottomNavigationBar(currentIndex: BottomNavigationItem.home.index),
        body: SafeArea(
          child: SizedBox(
            height: size.height,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Hello', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
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
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 40,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFFC14D25),
                                ),
                                child: const Text('Pick a city'),
                              ),
                            ),
                          ),
                        ],
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

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  const CustomBottomNavigationBar({
    Key? key,
    required this.currentIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      type: BottomNavigationBarType.fixed,
      elevation: 10,
      selectedFontSize: 0,
      selectedItemColor: const Color(0xFFC14D25),
      unselectedItemColor: Colors.black87,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.confirmation_number_outlined), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person_outline_outlined), label: ''),
      ],
    );
  }
}

enum BottomNavigationItem { home, search, favorite, ticket, profile }

extension BottomNavigationItemExtension on BottomNavigationItem {
  int get index {
    switch (this) {
      case BottomNavigationItem.home:
        return 0;
      case BottomNavigationItem.search:
        return 1;
      case BottomNavigationItem.favorite:
        return 2;
      case BottomNavigationItem.ticket:
        return 3;
      case BottomNavigationItem.profile:
        return 4;
    }
  }
}
