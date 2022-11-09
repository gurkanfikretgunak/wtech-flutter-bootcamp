import 'package:flutter/material.dart';

class Chatscreen extends StatelessWidget {
  const Chatscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.green,
            child: Icon(Icons.message),
          ),
          appBar: AppBar(
            actions: [
              InkWell(child: const Icon(Icons.search), onTap: () {}),
              PopupMenuButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                itemBuilder: (context) {
                  return [
                    // In this case, we need 5 popupmenuItems one for each option.
                    const PopupMenuItem(child: Text('New Group')),
                    const PopupMenuItem(child: Text('New Broadcast')),
                    const PopupMenuItem(child: Text('Linked Devices')),
                    const PopupMenuItem(child: Text('Starred Messages')),
                    const PopupMenuItem(child: Text('Settings')),
                  ];
                },
              ),
            ],
            backgroundColor: const Color(0xff128C7E),
            title: const Text('WhatsApp'),
            bottom: const TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                    iconMargin: EdgeInsets.all(100),
                    child: Icon(
                      Icons.camera_alt_rounded,
                    )),
                Tab(
                  child: Text('CHATS', style: TextStyle(color: Colors.white)),
                ),
                Tab(
                  child: Text('STATUS', style: TextStyle(color: Colors.white)),
                ),
                Tab(
                  child: Text('CALLS', style: TextStyle(color: Colors.white)),
                ),
              ],
              labelColor: Colors.white,
            ),
          ),
          body: Column(
            children: [],
          ),
        ));
  }
}
