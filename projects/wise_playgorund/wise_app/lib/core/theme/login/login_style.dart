import 'package:wise_app/unit/imports.dart';

class LoginStyle {
  static ButtonStyle loginButtonStyle = ElevatedButton.styleFrom(
      side: const BorderSide(color: Colors.blue),
      backgroundColor: ColorConstants.loginAndRegisterButtonColor);

  static TextStyle topTextStyle(ThemeProvider provider) => TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30,
        color: provider.topLoginTextColor,
      );

  static TextStyle emailTextStyle(ThemeProvider provider) => TextStyle(
      fontSize: 18,
      color: provider.loginEmailTextColor,
      fontWeight: FontWeight.w400);

  static TextStyle passwordTextStyle(ThemeProvider provider) => TextStyle(
      fontSize: 18,
      color: provider.loginPasswordTextColor,
      fontWeight: FontWeight.w400);

  static const InputBorder textFieldFocusedBorder = OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blue, width: 2.0),
  );

  static  InputBorder textFieldEnabledBorder = OutlineInputBorder(
    borderSide:
    BorderSide(color: ColorConstants.loginTextButtonBorderSideColor, width: 2.0),
  );

  static const troubleTextStyle=TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: 18,
  color:ColorConstants.loginAndRegisterButtonColor);
}
