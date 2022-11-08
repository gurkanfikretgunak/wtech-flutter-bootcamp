import 'package:app/widgets/custom_appbar_home.dart';
import 'package:app/widgets/custom_list_view_builder.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  final bool isCustomAppBar;
  final bool isNotched;
  const HomeView({super.key, required this.isCustomAppBar, this.isNotched = false});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
        // extendBody: true,
        // extendBodyBehindAppBar: true,
        // floatingActionButton: CustomWidgets.getFloatingActionButtonWidget(),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        // bottomNavigationBar: isNotched ? CustomWidgets.getBottomAppBarWidget() : CustomWidgets.getBottomNavigationBar(),
        // appBar: const CustomAppBar(appBarHeight: 199, content: CustomAppBarHome()),
        body: Column(
      children: [
        SizedBox(
          height: size.height * 0.3,
          child: Stack(children: [
            Container(
              height: size.height * 0.3 - 27,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: const BorderRadius.vertical(bottom: Radius.circular(30)),
              ),
              child: const CustomAppBarHome(),
            ),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 33),
                  height: 54,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 1, color: Theme.of(context).colorScheme.secondary),
                    borderRadius: BorderRadius.circular(99),
                  ),
                  child: TextField(
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                      hintText: "Arama",
                      hintStyle: Theme.of(context).textTheme.bodyText1,
                      prefixIcon: Icon(Icons.search, color: Theme.of(context).colorScheme.onSecondary),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ))
          ]),
        ),
        Expanded(child: CustomListViewBuilder(timezone: timezone)),
      ],
    ));
  }
}
