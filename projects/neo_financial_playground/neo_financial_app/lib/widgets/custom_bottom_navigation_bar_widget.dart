import 'package:flutter/material.dart';
import 'package:neo_financial_app/core/provider/bottom_navigation_bar_state.dart';
import 'package:provider/provider.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    var state = Provider.of<BottomNavigationBarState>(context, listen: false);
    return BottomNavigationBar(
        currentIndex: context.watch<BottomNavigationBarState>().currentPage,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          if (state.currentPage != value) {
            state.changePage(value);
            Navigator.pushNamed(
              context,
              '/${state.pages.elementAt(state.currentPage)}',
            );
          }
        },
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
