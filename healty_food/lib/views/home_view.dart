import 'package:flutter/material.dart';
import 'package:healty_food/widgets/custom_button_bar.dart';
import 'package:healty_food/widgets/custom_appbar.dart';
import 'package:healty_food/widgets/custom_categories_text.dart';
import 'package:healty_food/widgets/custom_listilebuilder_images.dart';
import 'package:healty_food/widgets/custom_listtilebuilder_icons.dart';
import 'package:healty_food/widgets/custom_navigation_bar.dart';

// ignore: must_be_immutable
class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar.customAppbar(),
      body: Column(
        children: [
          CustomButtonBar.customButtonBar(),
          CustomListBuilderImages.customListBuilderImages(),
          CustomCategories.customCategories(),
          CustomListIcons.customListIcons(),
        ],
      ),
      bottomNavigationBar: CustomNavigationBar.customnavigationbar(),
    );
  }
}
