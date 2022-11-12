
import 'package:flutter/material.dart';

class CustomNavigationBar{
static Widget customNavigationBar(){
  return SizedBox(
        height: 100,
        child: BottomNavigationBar(
          iconSize: 36,
          elevation: 0,
          backgroundColor: Colors.transparent,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.star ),
              label: 'Home',             
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard ,color: Colors.grey,),
              label: 'Card',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shop ,color: Colors.grey),         
              label: 'Order',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.storage ,color: Colors.grey),
              label: 'Settings',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.store_mall_directory ,color: Colors.grey),
              label: 'Settings',
            ),
          ],
          selectedItemColor: Colors.green.shade700,
        ),
      );
}
  
}