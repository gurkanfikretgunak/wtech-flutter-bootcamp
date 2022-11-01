import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomWidgets {
  static Widget customBottomNavBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.green,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white.withOpacity(0.70),
      selectedFontSize: 15,
      unselectedFontSize: 10,
      onTap: (value) {

      },
      items: [
        const BottomNavigationBarItem(
          label: "Home Page",
          icon: Icon(Icons.home),
          ),

          const BottomNavigationBarItem(
            label: "Shop",
            icon: Icon(Icons.shop),
          ),

          const BottomNavigationBarItem(
            label: "Settings",
            icon: Icon(Icons.settings),
          ),
      ],
    );
  }

  static Widget customMaterialBanner() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          //Text("Material Banner Widget"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialBanner(
              content: const Text('Silme İşlemi Yapılsın mı?', /*style: TextStyle(color: Colors.lightGreenAccent)*/),
              leading: CircleAvatar(
                child: Icon(Icons.delete, color: Colors.white),
                backgroundColor: Colors.green,
                ),
              actions: [
                TextButton(
                  onPressed: (){},
                  child: Text("Hayır", /*style: TextStyle(color: Colors.lightGreenAccent)*/),
                 ),
                 TextButton(
                  onPressed: (){},
                  child: Text("Evet", /*style: TextStyle(color: Colors.lightGreenAccent)*/),
                 ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static PreferredSize customAppBar() {
    return PreferredSize(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: IconButton(
                    onPressed: (){
                      if (kDebugMode) {
                        print("Icon Right Button");
                      }
                    },
                    iconSize: 25,
                    color: Colors.white,
                   icon: const Icon(Icons.computer)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: const Text("Wtech App", style: TextStyle(color: Colors.white, fontSize: 20),),
                ),
                
              ],
            ),
          ],
        ),
      ),
      preferredSize: const Size.fromHeight(50),
    );
  }

  static Widget getFloatingActionButton() {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      onPressed: (){
        if (kDebugMode) {
          print("FAB Button");
        }
      },
      backgroundColor: Colors.green,
      );
  }

  static Widget getBottomAppBarWidget() {
    return BottomAppBar(
      notchMargin: 12,
      child: Row(
        children: [
          IconButton(
            onPressed: (){
              if (kDebugMode) {
                print("Drawer Menu");
              }
            },
           icon: const Icon(Icons.menu),
           )
        ],
      ),
    );
  }

  /*static MaterialBanner newMaterialBanner() {
    return MaterialBanner(
      content: const Text('Error message text'),
      leading: CircleAvatar(child: Icon(Icons.delete)),
      actions: [
      ElevatedButton(
        child: const Text('ACTION 1'),
        onPressed: () { },
      ),
      ElevatedButton(
        child: const Text('ACTION 2'),
        onPressed: () { },
      ),
      ],
    );
  }*/
}