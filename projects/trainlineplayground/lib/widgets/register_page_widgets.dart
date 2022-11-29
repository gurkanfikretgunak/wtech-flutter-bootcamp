
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trainlineplayground/core/data/provider/register_page_state.dart';

import '../constants/text_constants/constants.dart';
import '../constants/PageItems/register_page_items.dart';
import '../views/register_page.dart';

class FunctionalWidgets {

 static ElevatedButton createAccountButton(BuildContext context) {
    return ElevatedButton(
              onPressed: () {
                RegisterPageState.setSharedPrefs(RegisterPageItems.userInfo);
                showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text(CustomTextsConstants.registerSuccess),
                    content: const Text(CustomTextsConstants.kayitBasarili),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.of(context).pushNamed('/account'),
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
              )
              );
  }
}

class notificationWidget extends StatelessWidget {
  const notificationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
class UpBarContainer extends StatelessWidget {
  const UpBarContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

class RegisterTextFormFields extends StatelessWidget {
  const RegisterTextFormFields({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     late TextEditingController emailController;
   late TextEditingController passwordController;
   late TextEditingController nameController;
   late TextEditingController surnameController;
    return ListView.builder(
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
          
        });
  }
}

