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

    static Widget getFloatingActionButton(){
      return FloatingActionButton(onPressed: () {},
      child: IconButton(onPressed: (){}, icon: const Icon(Icons.add_a_photo_outlined))
        
      );
    
    }
    static PreferredSize getCustomAppBar(){
      return PreferredSize(
        // ignore: sort_child_properties_last
        child: Container(
          decoration: BoxDecoration(
            color: Colors.yellow,borderRadius: BorderRadius.circular(10)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.leaderboard)),
              const Padding(padding: EdgeInsets.all(30.0)),
              const Text("ulasozturk's app"),
              const Padding(padding: EdgeInsets.all(30.0)),
              IconButton(onPressed: (){}, icon: const Icon(Icons.accessibility))
            ],
          ),
        ),
        preferredSize: const Size.fromHeight(70)
      );

    }

    static Widget getCustomAppBanner(){
      return Padding(
        
        padding: const EdgeInsets.all(8.0),
        child: Column(
          
          children: [
            const Text("selam!"),
            Padding(padding:  const EdgeInsets.all(8.0),
            child: MaterialBanner(
              content:  const Text("data"),
              leading:  IconButton(onPressed: () {}, icon:const Icon(Icons.av_timer_sharp)),
              actions:[
                ElevatedButton(onPressed: (){}, child:const Text("bu bir elevated buttondur")),
                const Spacer(),
                ElevatedButton(onPressed: (){}, child:const Text("bu da bir elevated buttondur")),
              ]
              
              )
            ),
            
          ],
        ),
      );
    }


}