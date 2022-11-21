import 'package:wise_app/unit/imports.dart';

class RegisterStyle {
  static TextStyle emailPageTopTitleTextStyle(ThemeProvider provider) =>
      TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 30,
        color: provider.topLoginTextColor,
      );
  static TextStyle emailPageTopContentTextStyle(ThemeProvider provider) =>
      TextStyle(fontSize: 17, color: provider.registerAccountTypeContentTextColor);

  static List<TextStyle> emailPageBottomTextStyleList = const [
    TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: Color.fromRGBO(73, 159, 216, 1)),
    TextStyle(fontSize: 12, fontWeight: FontWeight.w400)
  ];

  static TextStyle nextButtonTextStyle = const TextStyle(fontSize: 18);

  static TextStyle registerAccountTypeContentStyle(ThemeProvider provider) => TextStyle(
    height: 1.5,
    fontSize: 15,
    color: provider.registerAccountTypeContentTextColor,
  );

  static TextStyle registerAccountTypeTitleStyle(ThemeProvider provider) => TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 22,
    color: provider.topLoginTextColor,
  );

  static ButtonStyle nextButtonStyle = ElevatedButton.styleFrom(
      side: const BorderSide(color: Colors.blue),
      backgroundColor: const Color.fromRGBO(73, 159, 216, 1));
}
