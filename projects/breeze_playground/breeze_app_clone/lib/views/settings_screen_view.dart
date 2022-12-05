import 'package:breeze_app_clone/widgets/app_bars/settings_app_bar.dart';
import 'package:breeze_app_clone/widgets/bottom_nav_bar.dart';
import 'package:breeze_app_clone/widgets/setting_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({Key? key}) : super(key: key);

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    bool light1 = false;
    bool light2 = true;

    return SafeArea(
      //appBar: CustomAppBar(),
      //bottomNavigationBar: CustomNavBar(),
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 239, 239, 253),
        appBar: CustomSettingsAppBar(),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("PASSCODE", style: TextStyle(
                        color: Color.fromARGB(255, 164, 165, 189),
                      ),),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  height: screenHeight - 541,
                  width: screenWidth - 20,
                  //color: Colors.white,
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: SettingText("Turn on"),
                          ),
                          Switch(
                            value: light1,
                            activeColor: Color.fromARGB(255, 59, 134, 134),
                            onChanged: (bool value){
                              setState(() {
                                light1 = value;
                              });
                            },
                          ),
                        ],
                      ),
                      Divider(thickness: 1, height: 1),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: SettingText("Change passcode"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
            
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 12, bottom: 15.0),
                  child: Row(
                    children: [
                      Text("NOTIFICATION", style: TextStyle(
                        color: Color.fromARGB(255, 164, 165, 189),
                      ),),
                    ],
                  ),
                ),
            
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  height: screenHeight - 541,
                  width: screenWidth - 20,
                  //color: Colors.white,
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: SettingText("Allow"),
                          ),
                          Switch(
                            value: light2,
                            activeColor: Color.fromARGB(255, 59, 134, 134),
                            onChanged: (bool value){
                              setState(() {
                                light2 = value;
                              });
                            },
                          ),
                        ],
                      ),
                      Divider(thickness: 1, height: 1),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: SettingText("Reminder at"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 12),
                            child: Text("19:20", style: TextStyle(
                              color: Color.fromARGB(255, 75, 74, 96),
                              fontSize: 16,
                            ),),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
            
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 12, bottom: 15.0),
                  child: Row(
                    children: [
                      Text("SOCIAL", style: TextStyle(
                        color: Color.fromARGB(255, 164, 165, 189),
                      ),),
                    ],
                  ),
                ),
            
                Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    height: screenHeight - 441,
                    width: screenWidth - 20,
                    //color: Colors.white,
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: SettingText("Rate us in Google Play"),
                            ),
                          ],
                        ),
                        Divider(thickness: 1, height: 1),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: SettingText("Share with friends"),
                            ),
                          ],
                        ),
                        Divider(thickness: 1, height: 1),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: SettingText("Follow us on Instagram"),
                            ),
                          ],
                        ),
                        Divider(thickness: 1, height: 1),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: SettingText("Privacy Policy"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
