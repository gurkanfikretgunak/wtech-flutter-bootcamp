import 'package:flutter/material.dart';

import 'chat_tile.dart';

class ChatScreen extends StatefulWidget {
  static const String id = 'Chatscreen';

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          backgroundColor: Colors.white,
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Color(0xff25d366),
            child: Icon(Icons.message),
          ),
          appBar: AppBar(
            actions: [
              Row(
                children: [
                  InkWell(child: const Icon(Icons.camera_alt), onTap: () {}),
                  SizedBox(
                    width: 15,
                  ),
                  InkWell(child: const Icon(Icons.search), onTap: () {}),
                ],
              ),
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
          body: ListView.builder(
            itemCount: 8,
            itemBuilder: (context, index) {
              return const Card(
                elevation: 0.40,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.pexels.com/photos/39866/entrepreneur-startup-start-up-man-39866.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                  ),
                  title: Text('Muhammed'),
                  subtitle: Text('Nasılsın'),
                  trailing: Text("15.37"),
                ),
              );
            },
          ),
        ));
  }
}
