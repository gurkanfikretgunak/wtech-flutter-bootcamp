import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 18,
      notchMargin: 12,
      child: Row(
        children: [
          Expanded(
            child: IconButton(
              icon: const Icon(Icons.home_outlined),
              onPressed: () {},
              iconSize: 40,
            ),
          ),
          const Spacer(),
          Expanded(
            child: IconButton(
              iconSize: 40,
              icon: const Icon(
                Icons.person_outline,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
