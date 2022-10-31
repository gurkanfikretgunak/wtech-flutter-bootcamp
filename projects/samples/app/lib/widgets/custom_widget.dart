import 'dart:ffi';

import 'package:flutter/material.dart';


class CustomWidgets{

    static Widget getCustomBottomNavBar(){
      return BottomNavigationBar(
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.yellow,
        selectedFontSize: 15,
        unselectedFontSize: 8,
        onTap: (value) {
          // buraya görev vericez
        },

        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const BottomNavigationBarItem(
            label: "LIKE",
            icon: Icon(Icons.star)
          ),
          const BottomNavigationBarItem(
            label: "Music",
            icon: Icon(Icons.music_note)
          ),
          const BottomNavigationBarItem(
            label: "Location",
            icon: Icon(Icons.location_city)
          ),
          const BottomNavigationBarItem(
            label: "library",
            icon: Icon(Icons.library_books_outlined)
          ),
          
        ],
      );
    }

    static Widget getBottomAppBar(){
      return BottomAppBar(
        
        notchMargin: 10,
        child: Row(
          children: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_left_outlined)),
            IconButton(onPressed: (){}, icon: const Icon(Icons.book)),
            const Spacer(),
            IconButton(onPressed: (){}, icon: const Icon(Icons.mode_edit_outline_rounded)),
            IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_right_sharp)),
          ],
        ),
        


      );

      
    }

    static Widget getFloatingActionButton(){
      return FloatingActionButton(onPressed: () {},
      child: IconButton(onPressed: (){}, icon: const Icon(Icons.add_a_photo_outlined))
        
      );
    
    }


}