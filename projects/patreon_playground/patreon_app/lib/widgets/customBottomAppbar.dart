import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomBottomAppBar extends StatefulWidget {
  int selectedIndex = 0;

  CustomBottomAppBar({super.key, required this.selectedIndex});

  @override
  State<CustomBottomAppBar> createState() => _CustomBottomAppBarState();
}

class _CustomBottomAppBarState extends State<CustomBottomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      decoration: const BoxDecoration(
          //color: Colors.blue,
          ),
      child: Column(
        children: [
          const Divider(
            color: Colors.black12,
            thickness: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    widget.selectedIndex = 0;
                  });
                  Navigator.pushNamed(context, "/home");
                },
                icon: widget.selectedIndex == 0
                    ? const Icon(
                        Icons.table_chart,
                        color: Colors.black,
                        size: 30,
                      )
                    : const Icon(
                        Icons.table_chart_outlined,
                        color: Colors.black,
                        size: 30,
                      ),
              ),
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    widget.selectedIndex = 1;
                  });
                  Navigator.pushNamed(context, "/explore");
                },
                icon: widget.selectedIndex == 1
                    ? const Icon(
                        Icons.explore,
                        color: Colors.black,
                        size: 30,
                      )
                    : const Icon(
                        Icons.explore_outlined,
                        color: Colors.black,
                        size: 30,
                      ),
              ),
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    widget.selectedIndex = 2;
                  });
                  Navigator.pushNamed(context, "/message");
                },
                icon: widget.selectedIndex == 2
                    ? const Icon(
                        Icons.mail,
                        color: Colors.black,
                        size: 30,
                      )
                    : const Icon(
                        Icons.mail_outline,
                        color: Colors.black,
                        size: 30,
                      ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
