import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:trainlineplayground/routes/routes.dart';



import '../views/account_page.dart';
import '../views/home_ticket_page.dart';
import '../views/orjin_home_page.dart';
import '../views/register_page.dart';
import '../views/sign_in_account_page.dart';
import 'data/provider/home_page_state.dart';
import 'data/provider/register_page_state.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  get mainRoute => null;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      
      create: (BuildContext context) => TextFormStateProvider(),
      child: MaterialApp(
        initialRoute: '/',
        onGenerateRoute: RouteGenerator.generateRoute,
        title: 'Flutter Demo',
        theme: ThemeData(
          
          primarySwatch: Colors.blue,
        ),
        
        home: const AccountPage(),
      ),
      
    );
  }

}
// bloc state management arastir
