import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatefulWidget {
  const CustomBottomAppBar({super.key});

  @override
  State<CustomBottomAppBar> createState() => _CustomBottomAppBarState();
}

class _CustomBottomAppBarState extends State<CustomBottomAppBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: const BoxDecoration(
          //color: Colors.blue,
          ),
      child: Column(
        children: [
          const Expanded(
              flex: 0,
              child: Divider(
                color: Colors.grey,
              )),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  enableFeedback: false,
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 0;
                    });
                  },
                  icon: _selectedIndex == 0
                      ? const Icon(
                          Icons.home_filled,
                          color: Colors.black,
                          size: 30,
                        )
                      : const Icon(
                          Icons.home_outlined,
                          color: Colors.black,
                          size: 30,
                        ),
                ),
                IconButton(
                  enableFeedback: false,
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 1;
                    });
                  },
                  icon: _selectedIndex == 1
                      ? const Icon(
                          Icons.search,
                          color: Colors.black,
                          size: 30,
                        )
                      : const Icon(
                          Icons.search_outlined,
                          color: Colors.black,
                          size: 30,
                        ),
                ),
                IconButton(
                  enableFeedback: false,
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 2;
                    });
                  },
                  icon: _selectedIndex == 2
                      ? const Icon(
                          Icons.local_post_office,
                          color: Colors.black,
                          size: 30,
                        )
                      : const Icon(
                          Icons.local_post_office_outlined,
                          color: Colors.black,
                          size: 30,
                        ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
