import 'package:flutter/material.dart';


class CustomWidgets{

    static Widget customBottomNavBar(){
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
      )
    }



}