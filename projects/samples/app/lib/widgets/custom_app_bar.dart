import 'package:app/widgets/custom_drop_down_menu.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  final double preferredSizeHeight;
  final String _searchTextFieldString =
      'Araba, telefon, bisiklet ve daha fazlası...';
  const CustomAppBar({super.key, this.preferredSizeHeight = kToolbarHeight});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.zero,
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
                      children: const [
                        Icon(Icons.location_on_sharp),
                        CustomDropDownMenu(),
                      ],
                    ),
                  ),
                  const Divider(thickness: 1),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: _searchTextFieldString,
                          icon: const Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Icon(Icons.search_sharp),
                          ),
                          suffixIcon: const Icon(Icons.notifications_sharp),
                        ),
                      ),
                    ),
                  ),
                  const Divider(thickness: 1),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(preferredSizeHeight);
}
