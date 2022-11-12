import 'package:flutter/material.dart';
import 'package:patreon_app/widgets/customAppBar.dart';
import 'package:patreon_app/widgets/customBottomAppbar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   title: const Text("Feed"),
      //   centerTitle: true,
      //   leading: Container(
      //     decoration: BoxDecoration(
      //       borderRadius: BorderRadius.circular(30),
      //       color: Colors.blue,
      //     ),
      //     child: IconButton(
      //       onPressed: () {},
      //       icon: const Icon(Icons.person),
      //     ),
      //   ),
      // ),
      appBar: const CustomAppBar(),

      body: SizedBox(
        height: MediaQuery.of(context).size.width * 0.65,
        child: Center(
            child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Divider(color: Colors.grey),
            const RefreshProgressIndicator(color: Colors.red),
            Image.asset("assets/dog2.png"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  "Just a moment while we get things ready...",
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ],
            )
          ],
        )),
      ),
      bottomNavigationBar: const CustomBottomAppBar(),
    );
  }
}
