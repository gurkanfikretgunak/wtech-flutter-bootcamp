import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import '../views/home_page_view.dart';
import 'data/provider/home_page_state.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: <SingleChildWidget>[
        ChangeNotifierProvider(create: (BuildContext context)=>HomePageState(),),
        FutureProvider(create: (BuildContext context) {  }, initialData: null,)],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          
          primarySwatch: Colors.blue,
        ),
        home:   HomeTicketPage(),
      ),
      
    );
  }
}

