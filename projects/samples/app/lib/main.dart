import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeView(),
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.blueGrey,
      ),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, kToolbarHeight),
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Color(0xff11998e),
                offset: Offset(1.0, 6.0),
                blurRadius: 10.0,
              ),
              BoxShadow(
                color: Color(0xff11998e),
                offset: Offset(1.0, 6.0),
                blurRadius: 10.0,
              ),
            ],
            gradient: LinearGradient(
                colors: [Color(0xff11998e)],
                begin: FractionalOffset(0.2, 0.2),
                end: FractionalOffset(1.0, 1.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
          child: const Center(
              child: Text(
            "Appbar With Gradient",
            style: TextStyle(color: Colors.white, fontSize: 25.0),
          )),
        ),
      ),
    );
  }
}
