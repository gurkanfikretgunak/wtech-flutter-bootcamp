import 'package:wise_app/unit/imports.dart';

class HomeStyle {
  static ButtonStyle homeAppBarButtonStyle = ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(
          const Color.fromRGBO(61, 76, 110, 1)));

  static ShapeBorder sliverAppBarCardStyle = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(15.0),
  );

  static TextStyle homePageTitleStyle(ThemeProvider provider) => TextStyle(
      fontSize: 18,
      color: provider.homePageTitleTextColor,
      fontWeight: FontWeight.w600);

  static TextStyle homePageContentStyle(ThemeProvider provider) =>  TextStyle(
      color: provider.homePageContentTextColor,
      fontSize: 15,
  );

  static Decoration homePageNavigationSendButtonDecoration =  BoxDecoration(
      color: Colors.green,
      borderRadius: BorderRadius.circular(50));


}
