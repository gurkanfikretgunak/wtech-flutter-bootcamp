import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:retrofit/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trainlineplayground/core/constants.dart';
import 'package:trainlineplayground/core/data/models/user_model.dart';
import 'package:trainlineplayground/core/data/provider/user_model_sharedpf.dart';

import '../core/data/provider/register_page_state.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => RegisterPageState();
}

class RegisterPageState extends State<RegisterPage> {

  List<ListViewBuilderItems> textfieldItems = [
    ListViewBuilderItems(title: "Email"),
    ListViewBuilderItems(title: "Create password"),
    ListViewBuilderItems(title: "First name"),
    ListViewBuilderItems(title: "Surname"),
  ];
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController nameController;
  late TextEditingController surnameController;
  late List<TextEditingController> mycontrollers = [
    emailController,
    passwordController,
    nameController,
    surnameController
  ];
  late bool isConfirmed = true;
  late bool isOk;
  late List<String> userInfo = [
    emailController.text,
    nameController.text,
    surnameController.text
  ];
 
  
  late SharedPreferences mainPref;
   Future<void> setSharedPrefs(List<String> userInfo) async{
    mainPref= await SharedPreferences.getInstance();
    mainPref.setStringList('userinfo',userInfo);
  }
  


  @override
  void initState() {
   
    emailController = TextEditingController();
    passwordController = TextEditingController();
    nameController = TextEditingController();
    surnameController = TextEditingController();
    mycontrollers;
    isConfirmed = TextFormStateProvider().isConfirmed;
    userInfo;
    setSharedPrefs(userInfo);
    UserModelState().readSharedPrefs();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    void _showDialog() {
      // flutter defined function
      showDialog(
        context: context,
        builder: (BuildContext context) {
          // return object of type Dialog
          return AlertDialog(
            title: const Text("Alert Dialog title"),
            content: const Text("Alert Dialog body"),
            actions: <Widget>[
              // usually buttons at the bottom of the dialog
              TextButton(
                child: const Text("Close"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
    
      
      return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Container(
              alignment: Alignment.bottomLeft,
              color: Colors.purple,
              height: 100,
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_left_rounded),
                  color: Colors.white,
                ),
                const Text(
                  "New customer",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )
              ]),
            ),
            ListView.builder(
                padding: const EdgeInsets.only(left: 15, right: 15),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: textfieldItems.length,
                itemBuilder: (context, index) {
                  return 
                    TextFormField(
                      controller: mycontrollers[index],
                      decoration: InputDecoration(
                          labelText: textfieldItems[index].title),
                    );
                  
                }),
            const Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              height: 100,
              width: 350,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text("Be first to hear"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Flexible(
                          child: Text(
                              "Yes, ı want great discounts,sales,offers and more from Trainline.")),
                      Consumer<TextFormStateProvider>(
                        builder: (context, TextFormStateProvider isOkey,
                                child) =>
                            IconButton(
                                onPressed: () {
                                  isOkey.changeButton();
                                },
                                icon: isOkey.isOk
                                    ? const Icon(Icons.offline_pin_outlined)
                                    : const Icon(Icons.offline_pin_rounded)),
                      )
                    ],
                  ),
                ],
              ),
            ),
            ElevatedButton(
                // eğer isconfirmed true ise bu   değilse null ver
                onPressed: () {
                 
                  setSharedPrefs(userInfo);
                
                  
                  
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text("a "),
                      content: const Text('AlertDialog description'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'Cancel'),
                          child: const Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue),
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 300,
                  child: const Text(
                    "Create Account",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                )),
          ],
        ),
      );
    
  }
}
