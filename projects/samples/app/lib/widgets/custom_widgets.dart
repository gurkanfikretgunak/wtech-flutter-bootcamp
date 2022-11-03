import 'package:app/constants/custom_contants.dart';
import 'package:app/core/themes/themes.dart';
import 'package:app/widgets/search_bar_widget.dart';
import 'package:flutter/material.dart';

class CustomWidgets {
  static PreferredSize customAppBar() {
    return PreferredSize(
        // ignore: sort_child_properties_last
        child: Container(
          height: 500,
          color: Colors.grey[100],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(CustomTextConstants().path),
                          radius: 30,
                        ),
                        // ignore: prefer_const_constructors
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                CustomTextConstants().name,
                                style: CustomTheme.customThemeData().textTheme.headline1?.copyWith(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                CustomTextConstants().definition,
                                style: CustomTheme.customThemeData().textTheme.subtitle1?.copyWith(
                                      color: Colors.grey.withOpacity(0.8),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.notification_add_outlined),
                    )
                  ],
                ),
              ),
              const CustomSearch(),
            ],
          ),
        ),
        preferredSize: const Size.fromHeight(200));
  }
}
