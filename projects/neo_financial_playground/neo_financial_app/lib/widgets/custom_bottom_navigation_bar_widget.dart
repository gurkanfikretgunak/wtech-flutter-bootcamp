import 'package:flutter/material.dart';
import 'package:neo_financial_app/core/data/constants/icon_constants.dart';
import 'package:neo_financial_app/core/data/constants/padding_constants.dart';
import 'package:neo_financial_app/core/data/constants/text_constants.dart';
import 'package:neo_financial_app/core/provider/navigation_state.dart';
import 'package:provider/provider.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    var state = Provider.of<NavigationState>(context, listen: false);
    return BottomNavigationBar(
        currentIndex: context.watch<NavigationState>().currentPageIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          if (state.currentPageIndex != value) {
            state.changePage(value);
          }
        },
        items: const [
          BottomNavigationBarItem(
            label: TextConstants.bottomNavBarElementLabel1,
            icon: Padding(
              padding: PaddingConstants.mediumPadding,
              child: Icon(
                IconConstants.bottomNavBarElementIcon1,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: TextConstants.bottomNavBarElementLabel2,
            icon: Padding(
              padding: PaddingConstants.mediumPadding,
              child: Icon(
                IconConstants.bottomNavBarElementIcon2,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: TextConstants.bottomNavBarElementLabel3,
            icon: Padding(
              padding: PaddingConstants.mediumPadding,
              child: Icon(IconConstants.bottomNavBarElementIcon3),
            ),
          ),
          BottomNavigationBarItem(
            label: TextConstants.bottomNavBarElementLabel4,
            icon: Padding(
              padding: PaddingConstants.mediumPadding,
              child: Icon(
                IconConstants.bottomNavBarElementIcon4,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: TextConstants.bottomNavBarElementLabel5,
            icon: Padding(
              padding: PaddingConstants.mediumPadding,
              child: Icon(IconConstants.bottomNavBarElementIcon5),
            ),
          ),
        ]);
  }
}
