import 'package:app/widgets/custom_drop_down_menu.dart';
import 'package:flutter/material.dart';

class CustomWidgets {
  // TODO: customAppBar function will be updated
  static PreferredSize customAppBar() {
    return PreferredSize(
        preferredSize: const Size.fromHeight(180),
        child: SafeArea(
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Icon(Icons.location_on_sharp),
                          const CustomDropDownMenu(),
                        ],
                      ),
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText:
                                'Araba, telefon, bisiklet ve daha fazlası...',
                            icon: Padding(
                              padding: EdgeInsets.only(left: 8),
                              child: Icon(Icons.search_sharp),
                            ),
                            suffixIcon: Icon(
                              Icons.notifications_sharp,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }

  static FloatingActionButton customFloatingActionButton() {
    return FloatingActionButton(
      onPressed: () {},
      child: const Icon(Icons.camera_alt_sharp),
    );
  }
}
