import 'package:flutter/material.dart';



class CustomWidgets{


  static Widget getFloatingActionButton(){
    return FloatingActionButton(
      
      onPressed: () {
      print("FAB BUTTON");
    },child: const Icon(Icons.add),
      

    );
  }

  static Widget getBottomAppBarWidget(){
    return BottomAppBar(
      notchMargin: 12.0, //içerideki kavis
      child: Row(
        children: [
          IconButton(onPressed: () {
            print("drawer menu");
          }, icon: const Icon(Icons.abc)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.abc)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.abc)),

        ],
      ),
    );
  }

  static PreferredSize customAppBar(){
    return 
      PreferredSize(preferredSize: const Size(50,100),
       child: Column(
        children: const [
          Text("data"),
          Text("data"),
          Text("data"),
          Text("data")
        ],
       )
       
       
       
       );
    
  }

  Widget customAppBanner(){
    return const MaterialBanner(
      content: Text("err"),
      ;
  }
}