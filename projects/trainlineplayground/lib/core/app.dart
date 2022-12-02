import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trainlineplayground/routes/routes.dart';
import '../views/orjin_home_page.dart';
import 'data/provider/home_page_state.dart';
import 'data/provider/register_page_state.dart';
import 'data/provider/user_model_sharedpf.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(  
      providers: [
        ChangeNotifierProvider(create: (context) =>TextFormStateProvider()),
        ChangeNotifierProvider(create: (context) => HomePageState()),
        ChangeNotifierProvider(create:(context) => UserModelState(),)
      ],
      child: MaterialApp(
        initialRoute: '/',
        onGenerateRoute: RouteGenerator.generateRoute,
        title: 'Flutter Demo',
        theme: ThemeData(
          
          primarySwatch: Colors.blue,
        ),
        
        home: const OriginalHomePage(),
      ),
      
    );
  }

}
// bloc state management arastir
