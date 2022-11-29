
import 'package:flutter/material.dart';

class ListViewBuilderItems {
  String title;
  ListViewBuilderItems({required this.title});
}

class ListViewBuilderControllers extends TextEditingController{
  late TextEditingController myItemController;
  
  ListViewBuilderControllers({required this.myItemController});
}
class CustomTextsConstants {

  static const discountText =  "Yes, I want great discounts,sales,offers and more from Trainline.";
  static const newCustomer = "New customer";
  static const beFirst = "Be first to hear";
  static const createAccount = "Create Account";
  static const registerSuccess = "You have successfully registered";
  static const cancel = "kapat";
  static const kayitBasarili = "kayıt başarılı";
  static const liveTicket = "Live times & tickets";
  static const outbound = 'Outbound';
  static const search= "Search";
  static const myticket = 'My Tickets';
  static const signin = 'Sign In';
  
}