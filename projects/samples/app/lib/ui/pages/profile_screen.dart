

import 'package:flutter/material.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFE9E9E9),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
        child: BottomNavigationBar(
          iconSize: 40,
          selectedIconTheme: IconThemeData(
            color: const Color(0xFF200007),
          ), 
          unselectedIconTheme: IconThemeData(
            color: Colors.black12,
          ),
          items: [
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Icon(Icons.home),
              ),
         label: "Home",
           
          
            ),
            BottomNavigationBarItem( 
              
              icon: Padding(
                child: Icon(Icons.search),
                padding: const EdgeInsets.only(top: 8.0),
              ),
             
              label:  "Search",
             
              ), 
            
            BottomNavigationBarItem(
              icon: Padding(
                child: Icon(Icons.person),
                padding: const EdgeInsets.only(top: 8.0),
                ),
                label:  "Profile",
               
                                ),
            
            ],
      ),
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            height: height * 0.35,
            left: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(40),
              ),
              child: Container(
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
           top: height * 0.38,
           left: 0,
           right: 0,
           child: Container(

             
            height: height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 8,
                    left: 32,
                    right: 16,
                  ),
                  child: Text(
                    "Meals for Today",
                    style: const TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,

                    ),
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Row(
                      children: <Widget>[

                      ],
                    ),
                  ),
                  ),  
                Expanded(
                  child: Container(
                    color: Colors.blueAccent,
                  ),
                ),
              ],


            ),
            
           ),
          ),
        ],
      ),
    );
  }
}


