import 'package:flutter/material.dart';


class MyCustomWidgets{

  static PreferredSize getCustomAppBar(){
      return PreferredSize(
        // ignore: sort_child_properties_last
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue,borderRadius: BorderRadius.circular(15)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.accessibility_new_outlined)),
              const Padding(padding: EdgeInsets.all(30.0)),
              const Text("sample app"),
              const Padding(padding: EdgeInsets.all(30.0)),
              IconButton(onPressed: (){}, icon: const Icon(Icons.account_circle_sharp))
            ],
          ),
        ),
        preferredSize: const Size.fromHeight(70)
      );

      }

  static Widget myContainer(){
    return Container(
      width: 400,
      height: 300,
      color: Colors.grey,
      child: Column(
        children: [
          const Padding(padding: EdgeInsets.all(20.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(padding: EdgeInsets.all(20.0)),
              const Icon(Icons.heart_broken_outlined),
              const Padding(padding: EdgeInsets.only(left:60.0)),
              TextButton(onPressed: (){}, child:const Text("health",style: TextStyle(color: Colors.black,fontSize: 20),)),
              const Padding(padding: EdgeInsets.only(right:30)),
              IconButton(onPressed: (){}, icon: const Icon(Icons.add)),
            ],
          ),
          const Padding(padding: EdgeInsets.all(15.0)),
          Row(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(padding: EdgeInsets.all(20.0)),
              const Icon(Icons.battery_charging_full_sharp),
              const Padding(padding: EdgeInsets.only(left:50.0)),
              TextButton(onPressed: (){}, child:const Text("energy",style: TextStyle(color: Colors.black,fontSize: 20),)),
              const Padding(padding: EdgeInsets.only(right:40)),
              IconButton(onPressed: (){}, icon: const Icon(Icons.add)),
            ],
          ),
          const Padding(padding: EdgeInsets.all(15.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(padding: EdgeInsets.all(20.0)),
              const Icon(Icons.monetization_on_outlined),
              const Padding(padding: EdgeInsets.only(left:50.0)),
              TextButton(onPressed: (){}, child:const Text("money",style: TextStyle(color: Colors.black,fontSize: 20),)),
              const Padding(padding: EdgeInsets.only(right:40)),
              IconButton(onPressed: (){}, icon: const Icon(Icons.add)),
            ],
          )
        ],
      ),
    );
  }    

  static Widget myBottomAppBar(){
      return BottomAppBar(
        color: Colors.blueGrey,
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
  static Widget myFloatingActionButton(){
      return FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {},
      child: IconButton(onPressed: (){}, icon: const Icon(Icons.add)),

      
      );
    
    }

  static Widget myDefPadding(){
    return const Padding(padding: EdgeInsets.all(36.5));
  }  
}