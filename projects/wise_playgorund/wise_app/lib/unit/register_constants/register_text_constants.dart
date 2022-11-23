class RegisterTextConstants {
  static const String emailWidgetTopText = "Enter your email \naddress";
  static const String yourEmail = "Your email";
  static const String country = "Country";
  static const String yourPhone = "Your phone number:";
  static const String nextButtonText = "Next";
  static const String sendCodeButtonText = "Send code";
  static const String enterCodeButtonText = "Continue";
  static const List<String> bottomTextList = [
    "By signing up you agree to our",
    " Terms of Use",
    " and",
    " Privacy Policy"
  ];

  static const List<Map<String, dynamic>> accountTypeItemContentList = [
    {
      "imagePath": "assets/images/personel.png",
      "title": "Personal account",
      "content": "Spend, send and receive money around the world for less"
    },
    {
      "imagePath": "assets/images/business.png",
      "title": "Business account",
      "content": "Do business or freelance work internationally"
    }
  ];

  static const String accountTypeWidgetTopTextTitle =
      "What kind of account \nwould you like to open \ntoday?";

  static const String selectCountryWidgetTopTextTitle =
      "Your country of primary\nresidence";

  static const String verifyPhoneTopTextTitle =
      "Verify your phone \nnumber with a code";

  static const String verifyPhoneEnterCodeTopTextTitle =
      "We just sent you an\nSMS";

  static const String accountTypeWidgetTopTextContent =
      "You can add another account later on, too.";

  static const String verifyPhoneTopTextContent =
      "We'll send you a code - it helps us keep your \naccount secure";

  static const String verifyPhoneEnterCodeContentTextTitle =
      "I didn't receive a code";

  static const String verifyPhoneEnterCodeTopTextContent =
      "Enter the security code we sent to *******2380";
}
