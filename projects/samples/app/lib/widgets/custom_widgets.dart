import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/*NOTLAR !!!!!
*Static olarak tanımlarsak başka yerde çağırdığımızda () gerek kalmaz.
*/
class CustomWidgets {
  static Widget customBottomNavBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color.fromARGB(255, 33, 172, 231),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white.withOpacity(0.60),
      selectedFontSize: 15,
      unselectedFontSize: 10,
      onTap: (value) {
        // Respond to item press.
      },
      // ignore: prefer_const_literals_to_create_immutables
      items: [
        const BottomNavigationBarItem(
          label: "FAV",
          icon: Icon(Icons.favorite),
        ),
        // ignore: prefer_const_constructors
        BottomNavigationBarItem(
          label: "Music",
          icon: const Icon(Icons.music_note),
        ),
        const BottomNavigationBarItem(
          label: "Location",
          icon: Icon(Icons.location_on),
        ),
        const BottomNavigationBarItem(
          label: "Livbary Book",
          icon: Icon(Icons.library_books),
        ),
      ],
    );
  }

  static Widget customAppBanner() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text("Today is important job"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: MaterialBanner(
              content: const Text('Meeting at 3 oclock'),
              leading: const CircleAvatar(child: Icon(Icons.warning)),
              actions: [
                TextButton(
                  child: const Text('Preparations are complete'),
                  onPressed: () {},
                ),
                TextButton(
                  child: const Text('Remind me later'),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Üst bar
  static PreferredSize customAppBar() {
    return PreferredSize(
        // ignore: sort_child_properties_last
        child: Container(
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 30, 209, 233),
              borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // ignore: prefer_const_constructors
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const Text("Home"),
                  ),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.star))
                ],
              ),
            ],
          ),
        ),
        preferredSize: const Size.fromHeight(70));
  }

  /*FloatingActionButton(FAB) material design felsefesinin sağladığı, 
  uygulama sayfasında birincil aksiyonu sağlayan genellikle dairesel butondur. 
  Ekrandaki en belirgin buton olduğu için genelde pozitif aksiyonlarda kullanılması tavsiye edilir (Sayfa Geçişleri, İndirme, Ekleme).
  */
  static Widget getFloatingActionButton() {
    return FloatingActionButton(
      child: const Icon(Icons.add),
      backgroundColor: Colors.black,
      onPressed: () {
        if (kDebugMode) {
          print("FAB Button");
        }
      },
    );
  }

  /*Bottom Navigation Bar Flutter ile bizlere sunulan bir menü çeşididir. 
  Bottom Navigation Bar’ı diğer menü çeşitlerinden ayıran özellik ise altta olmasıdır.
  */
  static Widget getBottomAppbarWidget() {
    return BottomAppBar(
      notchMargin: 12,
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {},
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
