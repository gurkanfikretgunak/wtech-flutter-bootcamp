import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trainlineplayground/core/data/provider/user_model_sharedpf.dart';
import '../constants/register_page_items.dart';
import '../core/data/provider/register_page_state.dart';
import '../widgets/register_page_widgets.dart';
class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});
  @override
  State<RegisterPage> createState() => RegisterPageState();
}
class RegisterPageState extends State<RegisterPage> {
  late bool isConfirmed = true;
  late bool isOk;
  static late SharedPreferences mainPref;
  static Future<void> setSharedPrefs(List<String> userInfo) async{
    mainPref= await SharedPreferences.getInstance();
    mainPref.setStringList('userinfo',userInfo);
  }
  @override
  void initState() {
    RegisterPageItems.emailController = TextEditingController();
    RegisterPageItems.passwordController = TextEditingController();
    RegisterPageItems.nameController = TextEditingController();
    RegisterPageItems.surnameController = TextEditingController();
    RegisterPageItems.mycontrollers;
    isConfirmed = TextFormStateProvider().isConfirmed;
    RegisterPageItems.userInfo;
    setSharedPrefs(RegisterPageItems.userInfo);
    UserModelState().readSharedPrefs();
    super.initState();
  }
  @override
  void dispose() {
    RegisterPageItems.emailController.dispose();
    RegisterPageItems.passwordController.dispose();
    RegisterPageItems.nameController.dispose();
    RegisterPageItems.surnameController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            const UpBarContainer(),
            const RegisterTextFormFields(),
            const Padding(padding: EdgeInsets.only(top: 20)),
            const notificationWidget(),
            FunctionalWidgets.createAccountButton(context),
          ],
        ),
      );
  }
}