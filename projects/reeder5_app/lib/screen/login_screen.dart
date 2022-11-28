import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  // const LoginScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.beenhere, color: Colors.red),
            title: Text("pocket", style: TextStyle(fontSize: 30)),
            trailing: Icon(Icons.keyboard_arrow_down),
          ),
          ListTile(
            title: Text(
              "Reeder",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              "https://reederapp.com",
            ),
            leading: Icon(Icons.cloud, color: Colors.grey),
          ),
          Text('  This application will be able to:',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text('   * Add new to your list.'),
          Text('   * Retrieve items from your list.'),
          Text('   * Modify existing items from your list'),
          SizedBox(
            height: 10,
          ),
          Text('   This application will not be able to:',
              style: TextStyle(fontWeight: FontWeight.bold)),
          Text('   * See your Pocket password.'),
          SizedBox(
            height: 30,
          ),
          ListTile(
            title: Text(
                "You can revoke access from any application at any time from Applications in your Options page."),
            //başına ikon
          ),
          SizedBox(
            height: 30,
          ),
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Log In and Authorize',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              controller: nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email or username',
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              obscureText: true,
              controller: passwordController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                child: const Text(
                  'Authorize',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  print(nameController.text);
                  print(passwordController.text);
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal[900],
                ),
              )),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HomeScreen(
                          index: 1,
                        )),
              );
            },
            child: const Text(
              'No, thanks',
            ),
          ),
        ],
      ),
    );
  }
}
