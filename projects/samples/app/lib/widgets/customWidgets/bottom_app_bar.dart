

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BottomAppBarWidget extends StatelessWidget {
  const BottomAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  BottomAppBar(

      // Floating action button ile bottom navigation bar arasındaki boşluk miktarını ayarlıyor. 
      notchMargin: 12,
      
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              if (kDebugMode) {
                print("drawer Menu");
              }
            },
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              if (kDebugMode) {
                print("Search Button");
              }
            },
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {
              if (kDebugMode) {
                print("OverFlow Button");
              }
            },
          ),
        ],
      ),
    );
  }
}