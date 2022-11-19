import 'package:wise_app/unit/imports.dart';

class RegisterStyle {
  static TextStyle emailPageTopTextStyle(ThemeProvider provider) => TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30,
        color: provider.topLoginTextColor,
      );

  static List<TextStyle> emailPageBottomTextStyleList = const [
    TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: Color.fromRGBO(73, 159, 216, 1)),
    TextStyle(fontSize: 12, fontWeight: FontWeight.w400)
  ];

  static TextStyle nextButtonTextStyle=const TextStyle(fontSize: 18);

  static ButtonStyle nextButtonStyle= ElevatedButton.styleFrom(
      side: const BorderSide(color: Colors.blue),
      backgroundColor:
      const Color.fromRGBO(73, 159, 216, 1));
}
