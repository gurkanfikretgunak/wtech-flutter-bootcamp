import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:trainlineplayground/constants/constants.dart';

import 'package:trainlineplayground/core/data/provider/user_model_sharedpf.dart';

import '../constants/register_page_items.dart';
import '../core/data/provider/register_page_state.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => RegisterPageState();
}

class RegisterPageState extends State<RegisterPage> {

  
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController nameController;
  late TextEditingController surnameController;
  
  late bool isConfirmed = true;
  late bool isOk;
  
  
  late SharedPreferences mainPref;
   Future<void> setSharedPrefs(List<String> userInfo) async{
    mainPref= await SharedPreferences.getInstance();
    mainPref.setStringList('userinfo',userInfo);
  }
  

  // parçala !
  @override
  void initState() {
   
    emailController = TextEditingController();
    passwordController = TextEditingController();
    nameController = TextEditingController();
    surnameController = TextEditingController();
    RegisterPageItems.mycontrollers;
    isConfirmed = TextFormStateProvider().isConfirmed;
    RegisterPageItems.userInfo;
    setSharedPrefs(RegisterPageItems.userInfo);
    UserModelState().readSharedPrefs();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
                  CustomTextsConstants.newCustomer,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                )
              ]),
            ),
            ListView.builder(
                padding: const EdgeInsets.only(left: 15, right: 15),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: RegisterPageItems.textfieldItems.length,
                itemBuilder: (context, index) {
                  return 
                    TextFormField(
                      controller: RegisterPageItems.mycontrollers[index],
                      decoration: InputDecoration(
                          labelText: RegisterPageItems.textfieldItems[index].title),
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
                      Text(CustomTextsConstants.beFirst),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                       const Flexible(
                          child: Text(
                              CustomTextsConstants.discountText)), // constants klasöründen çek
                      Consumer<TextFormStateProvider>(
                        builder: (context, TextFormStateProvider isUserAccepted,
                                child) =>
                            IconButton(
                                onPressed: () {
                                  isUserAccepted.changeButton();
                                },
                                icon: isUserAccepted.isAccepted  //isimlendirmelşeri düzenle
                                    ? const Icon(Icons.offline_pin_outlined)
                                    : const Icon(Icons.offline_pin_rounded)),
                      )
                    ],
                  ),
                ],
              ),
            ),
            ElevatedButton(
                // eğer isconfirmed true ise bu   değilse null ver  //bettercommand !
                onPressed: () {
                  setSharedPrefs(RegisterPageItems.userInfo);
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text(CustomTextsConstants.registerSuccess),
                      content: const Text(CustomTextsConstants.kayitBasarili),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, CustomTextsConstants.cancel),
                          child: const Text(CustomTextsConstants.cancel),
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
                  width: 300, // responsive yap! 
                  child: const Text(
                    CustomTextsConstants.createAccount,
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                )),
          ],
        ),
      );
    
  }
}


