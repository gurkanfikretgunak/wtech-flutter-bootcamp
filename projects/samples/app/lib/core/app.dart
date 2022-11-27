import 'package:flutter/material.dart';
import 'package:samples/views/home_view.dart';

import '../views/login_register_page.dart';
import '../views/main_page_view.dart';
import '../views/my_home_view.dart';
import '../views/register_page.dart';
import '../views/safe_area_vied.dart';



class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
        home:  MainPage()
        
        
        );
        
  }
}
