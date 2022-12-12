import 'package:flutter/material.dart';

class CustomAppBar extends PreferredSize {
  const CustomAppBar({
    super.key,
    required super.child,
    required super.preferredSize,
  });

  static PreferredSize customAppBar({
    required BuildContext context,
    required String titleText,
    required bool isBackIcon,
  }) {
    return PreferredSize(
        preferredSize: const Size.fromHeight(70.0),
        child: AppBar(
          shape: Border(
              bottom:
                  BorderSide(color: Colors.grey.withOpacity(0.5), width: 1)),
          elevation: 0.0,
          backgroundColor: Color.fromARGB(0, 15, 3, 41),
          leading: isBackIcon ? const BackButton() : const SizedBox(),
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.only(top: 14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(titleText,
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                        fontSize: 20, fontWeight: FontWeight.normal)),
                Text("The Guardian",
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        ?.copyWith(fontSize: 40))
              ],
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 15, right: 5),
              child: Container(
                  height: 40,
                  width: 85,
                  decoration: BoxDecoration(
                      color: const Color(0xFFFFC700),
                      borderRadius: BorderRadius.circular(50)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("W-27",
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1
                              ?.copyWith(fontWeight: FontWeight.bold)),
                      const CircleAvatar(
                          maxRadius: 18, backgroundColor: Colors.red),
                    ],
                  )),
            )
          ],
        ));
  }
}
