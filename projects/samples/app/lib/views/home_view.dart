import 'package:app/widgets/custom_appbar.dart';
import 'package:app/widgets/custom_appbar_home.dart';
import 'package:app/widgets/custom_list_view_builder.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  final bool isCustomAppBar;
  final bool isNotched;
  const HomeView({super.key, required this.isCustomAppBar, this.isNotched = false});

  @override
  Widget build(BuildContext context) {
    List<String> timezone = [
      "Africa, Abidjan",
      "Africa, Accra",
      "Africa, Addis_Ababa",
      "Africa, Algiers",
      "Africa, Asmara",
      "Africa, Bamako",
      "Africa, Bangui",
      "Africa, Banjul",
      "Africa, Bissau",
      "Africa, Blantyre",
      "Africa, Brazzaville",
      "Africa, Bujumbura",
      "Africa, Cairo",
      "Africa, Casablanca",
      "Africa, Ceuta",
    ];

    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      // floatingActionButton: CustomWidgets.getFloatingActionButtonWidget(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // bottomNavigationBar: isNotched ? CustomWidgets.getBottomAppBarWidget() : CustomWidgets.getBottomNavigationBar(),
      appBar: const CustomAppBar(appBarHeight: 199, content: CustomAppBarHome()),
      body: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Expanded(child: CustomListViewBuilder(timezone: timezone))],
        ),
      ),
    );
  }
}
