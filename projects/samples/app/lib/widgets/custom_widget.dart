
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomWidgets{

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
