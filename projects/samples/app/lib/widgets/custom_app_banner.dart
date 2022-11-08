import 'package:flutter/material.dart';

class CustomAppBanner extends StatelessWidget {
  const CustomAppBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(1.0),
            child: MaterialBanner(
              content: const Text(
                'Would you like to order ?',
              ),
              leading: const CircleAvatar(
                child: Icon(Icons.shopping_cart_checkout),
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
              ),
              backgroundColor: Colors.white,
              actions: [
                TextButton(
                  child: const Text(
                    'YES',
                    style: TextStyle(color: Colors.red, fontSize: 20),
                  ),
                  onPressed: () {},
                ),
                TextButton(
                  child: const Text(
                    'NO',
                    style: TextStyle(color: Colors.red, fontSize: 20),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
