import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../core/provider/provider_theme.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final provider = Provider.of<ThemeProvider>(context);
    TextEditingController _registerEmailController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: provider.appBarColor,
        iconTheme: provider.appBarButtonColor,
        leading: IconButton(
          icon: const Icon(Icons.cancel_outlined),
          color: Colors.blue,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          SizedBox(
            width: 100,
            child: TextButton(
              onPressed: () {
                provider.changeTheme();
              },
              child: Text("Tema Değiş"),
            ),
          ),
        ],
      ),
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Enter your email \naddress",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: provider.topLoginTextColor,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: Row(
                      children: const [
                        Text("Your email"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: TextField(
                        controller: _registerEmailController,
                        decoration: InputDecoration(
                          alignLabelWithHint: true,
                          suffixIcon: IconButton(
                              onPressed: () {}, icon: Icon(Icons.cancel)),
                          focusedBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.blue, width: 2.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey.shade400, width: 2.0),
                          ),
                        )),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Row(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Row(
                        children: const [
                          Text(
                            "By signing up you agree to our",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          ),
                          Text(
                            " Terms of Use",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(73, 159, 216, 1)),
                          ),
                          Text(
                            " and",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          ),
                          Text(
                            " Privacy Policy",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(73, 159, 216, 1)),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: size.width,
                      height: 50,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              side: const BorderSide(color: Colors.blue),
                              backgroundColor:
                                  const Color.fromRGBO(73, 159, 216, 1)),
                          onPressed: () {},
                          child: const Text(
                            "Next",
                            style: TextStyle(fontSize: 18),
                          )),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
