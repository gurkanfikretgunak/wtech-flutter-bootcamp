import 'package:flutter/material.dart';
import 'package:patreon_app/views/explore_page.dart';
import 'package:patreon_app/views/home_page.dart';

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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyHomePage()),
                    );
                  },
                  icon: _selectedIndex == 0
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
                      _selectedIndex = 1;
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ExplorePage()),
                    );
                  },
                  icon: _selectedIndex == 1
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
                      _selectedIndex = 2;
                    });
                  },
                  icon: _selectedIndex == 2
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
          ),
        ],
      ),
    );
  }
}
