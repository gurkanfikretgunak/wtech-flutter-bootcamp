

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trainlineplayground/constants/constants.dart';

class RegisterPageItems {
  static late TextEditingController emailController;
  static late TextEditingController passwordController;
  static late TextEditingController nameController;
  static late TextEditingController surnameController;

  static List<ListViewBuilderItems> textfieldItems = [
    ListViewBuilderItems(title: "Email"),
    ListViewBuilderItems(title: "Create password"),
    ListViewBuilderItems(title: "First name"),
    ListViewBuilderItems(title: "Surname"),
  ];

  static List<TextEditingController> mycontrollers = [
    emailController,
    passwordController,
    nameController,
    surnameController
  ];
  static late List<String> userInfo = [
    emailController.text,
    nameController.text,
    surnameController.text
  ];
  
  
}