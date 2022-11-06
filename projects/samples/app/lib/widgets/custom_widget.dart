
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomWidgets{
 static Widget customBottomNavBar()
{
  return BottomNavigationBar(
  type: BottomNavigationBarType.fixed,
  backgroundColor: Colors.pink,
  selectedItemColor: Colors.white,
  unselectedItemColor: Colors.white.withOpacity(.60),
  selectedFontSize: 15,
  unselectedFontSize: 10,
  onTap: (value) {
    // Respond to item press.
  },
  // ignore: prefer_const_literals_to_create_immutables
  items: [
    // ignore: prefer_const_constructors
    BottomNavigationBarItem(
      label: "FAV",
      icon: const Icon(Icons.favorite),
    ),
    // ignore: prefer_const_constructors
    BottomNavigationBarItem(
      label: "MUSIC",
      icon: const Icon(Icons.music_note),
    ),
    // ignore: prefer_const_constructors
    BottomNavigationBarItem(
      label: "LOCATION",
      icon: const Icon(Icons.location_on),
    ),
    // ignore: prefer_const_constructors
    BottomNavigationBarItem(
      label: "LIBRARY",
      icon: const Icon(Icons.library_books),
    ),
  ],
);


} 


static Widget customAppBanner() {

  return Padding( 
    padding: const EdgeInsets.all(8.0),
    child: Column(
      children: [
        Text("Material Banner Widget"),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MaterialBanner(
            content: const Text('Error message text'),
            leading: const CircleAvatar(child: Icon(Icons.delete)),
            actions: [
          TextButton(
            child: const Text('ACTION 1'),
            onPressed: () { },
          ),
              TextButton(
            child: const Text('ACTION 2'),
            onPressed: () { },
              ),
            ],
          ),
        ),
      ],
    ),
  );
} 


  static PreferredSize customAppBar(){
    return PreferredSize(
          // ignore: sort_child_properties_last
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // ignore: prefer_const_constructors
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const Text("Wtech App"),
                    ),
                  
                  IconButton(
                    onPressed:(){
                      if (kDebugMode) {
                        print("Icon Right Button");
                      }
                    },
                    icon: const Icon(Icons.face))
                ],
              ),
            ],
            ),
          
          preferredSize: const Size.fromHeight(30),
        );

  } 

static Widget getFloatingActionButton(){
  return FloatingActionButton(
    child: const Icon(Icons.add),
    onPressed: (){
      if (kDebugMode) {
        print("FAB Button");
      }
    },
  );
} 




static Widget getBottomAppbarWidget(){

return BottomAppBar(
  
  notchMargin: 11,

  child: Row(
    children: [
      IconButton(
        icon: const Icon(Icons.menu), 
      onPressed: () {
       if (kDebugMode) {
         print("Drawer Menu");
       }
      }
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
              print("OwerFlow Button");
            }
           },
        ),


    ],
    )


  );

 } 
}
