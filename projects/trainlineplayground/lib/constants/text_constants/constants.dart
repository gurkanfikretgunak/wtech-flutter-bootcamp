
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
  static const Return = 'Return';
  static const From = "From:";
  static const DepartureStation = "Departure Station";
  static const recents = "recents";
  static const destination="Destination Station";
  static const savingSimple = "Make saving simple";
  static const railcardApp = "Save 1/2 with a digital Railcard in-app";
  static const findTimes ="Find Times and Prices";
  static const passangers ="Passengers";
  static const adult ="     Adult";
  static const youthpass = "Youth (0-25 years)";
  static const adultpass = "Adult (0-60 years)";
  static const oldpass = "Old (60+ years)";
  static const change ="Change     ";
  static const cards ="Cards & vouchers";
  static const loyalty ="     Loyalty cards & vouchers";
  static const too ="       to";

  
}