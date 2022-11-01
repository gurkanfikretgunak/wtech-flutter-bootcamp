import 'package:app/widgets/custom_widgets.dart';
import 'package:flutter/material.dart';


class HomeView extends StatelessWidget {
  const HomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color myGreen = Color.fromARGB(255, 47, 212, 170);
    //bool? customAppBar = true;
    return Scaffold(
      appBar: CustomWidgets.customAppBar(),
      extendBody: true,
      extendBodyBehindAppBar: true,
      floatingActionButton: CustomWidgets.getFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      body: Container(
        color: myGreen,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomWidgets.customMaterialBanner(),
            /*Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showMaterialBanner(CustomWidgets.newMaterialBanner());
                  },
                 child: Text("Buton"),
                 )
              ],
            ),*/
          ],
        ),
      ),
      bottomNavigationBar: CustomWidgets.customBottomNavBar(),
    );
  }
}