import 'package:flutter/material.dart';
import 'package:healty_food/widgets/custom_button_bar.dart';
import 'package:healty_food/widgets/custom_appbar.dart';
import 'package:healty_food/widgets/custom_categories_text.dart';
import 'package:healty_food/widgets/custom_listilebuilder_images.dart';
import 'package:healty_food/widgets/custom_navigation_bar.dart';

// ignore: must_be_immutable
class Homeview extends StatelessWidget {
  Homeview({super.key});
  List<String> categories = [
    "Breakfast",
    "Lunch",
    "Bevegares",
    "Snack",
    "Patato",
    "Bred"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar.customAppbar(),
      body: Column(
        children: [
          CustomButtonBar.customButtonBar(),
          CustomListBuilderImages.customListBuilderImages(),
          CustomCategories.customCategories(),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => SizedBox(
                width: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CircleAvatar(
                        backgroundColor: Colors.orangeAccent,
                        child: Icon(Icons.food_bank)),
                    Text(categories[index]),
                  ],
                ),
              ),
              itemCount: categories.length,
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomNavigationBar.customnavigationbar(),
    );
  }
}
