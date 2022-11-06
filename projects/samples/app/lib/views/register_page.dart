import 'package:flutter/material.dart';
import 'package:samples/widgets/login_page_widgets.dart';
import 'package:date_time_picker/date_time_picker.dart';
import '../widgets/register_page_widgets.dart';
import 'package:intl/intl.dart';


final int fontColor = 0xFF02A28F;

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => RegisterPageState();
}

class RegisterPageState extends State<RegisterPage> {
  late TextEditingController _usernamecontroller;
  late TextEditingController _registerpasswordcontroller;
  late TextEditingController _verifypasswordcontroller;
  late TextEditingController _datepickercontroller;
  late var passwordVisible = true;

  togglePasswordView() {
    setState(() {
      passwordVisible = !passwordVisible;
    });
  }

  @override
  void initState() {
    _usernamecontroller = TextEditingController();
    _registerpasswordcontroller = TextEditingController();
    _verifypasswordcontroller = TextEditingController();
    _datepickercontroller = TextEditingController();
    _datepickercontroller.text = "";
    passwordVisible = false;
    super.initState();
  }

  @override
  void dispose() {
    _usernamecontroller.dispose();
    _registerpasswordcontroller.dispose();
    _verifypasswordcontroller.dispose();
    _datepickercontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: registerBoxDecoration(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Container(
            height: 600,
            width: 300,
            decoration: myBoxDecoration(),
            child: Column(
              children: [
                const Padding(padding: EdgeInsets.only(top: 8.0)),
                RegisterHeaderWidget(fontColor: fontColor),
                RegisterUserNameTextField(
                    usernamecontroller: _usernamecontroller),
                registerPasswordTextField(),
                verifyPasswordTextField(),
                Container(
                  padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                  child: TextField(
                    controller: _datepickercontroller,
                    decoration: const InputDecoration(
                        suffixIcon: Icon(Icons.calendar_today),
                        labelText: "Doğum Tarihi"),
                    readOnly: true,
                    onTap: () async {
                      DateTime? secilenTarih = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1950),
                          lastDate: DateTime.now());

                      if (secilenTarih != null) {
                        print(secilenTarih); 
                        String formattedDate =DateFormat('dd-MM-yyyy').format(secilenTarih);
                        print( formattedDate); 
                        setState(() {
                          _datepickercontroller.text =formattedDate; 
                        });
                      } else {}
                      
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container verifyPasswordTextField() {
    return Container(
        padding: const EdgeInsets.only(left: 12.0, right: 12.0),
        child: TextField(
          controller: _verifypasswordcontroller,
          keyboardType: TextInputType.emailAddress,
          obscureText: !passwordVisible,
          decoration: InputDecoration(
              labelText: 'Verify Password',
              suffixIcon: IconButton(
                onPressed: () {
                  togglePasswordView();
                },
                icon: Icon(
                  passwordVisible
                      ?

                      /// CHeck Show & Hide.
                      Icons.visibility_off
                      : Icons.visibility,
                ),
              )),
        ));
  }

  Container registerPasswordTextField() {
    return Container(
        padding: const EdgeInsets.only(left: 12.0, right: 12.0),
        child: TextField(
          controller: _registerpasswordcontroller,
          keyboardType: TextInputType.emailAddress,
          obscureText: !passwordVisible,
          decoration: InputDecoration(
              labelText: 'Password',
              suffixIcon: IconButton(
                onPressed: () {
                  togglePasswordView();
                },
                icon: Icon(
                  passwordVisible
                      ?

                      /// CHeck Show & Hide.
                      Icons.visibility_off
                      : Icons.visibility,
                ),
              )),
        ));
  }

  BoxDecoration registerBoxDecoration() {
    return const BoxDecoration(
        image: DecorationImage(
      image: AssetImage("lib/assets/images/backgroundImage.png"),
      fit: BoxFit.cover,
      opacity: 0.9,
    ));
  }
}
