import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int curIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: curIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (value) => curIndex = value,
        items: const [
          BottomNavigationBarItem(
            label: 'Accounts',
            icon: Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.account_balance,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Insights',
            icon: Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.bar_chart,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.auto_awesome,
              ),
            ),
            label: 'Rewards',
          ),
          BottomNavigationBarItem(
            label: 'Payments',
            icon: Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.import_export,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Card',
            icon: Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.payment,
              ),
            ),
          ),
        ]);
  }
}
