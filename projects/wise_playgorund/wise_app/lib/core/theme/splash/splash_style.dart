import 'package:wise_app/unit/imports.dart';

class SplashStyle {
  static const TextStyle checkOurRatesStyle =
      TextStyle(color: Colors.blue, fontSize: 17, fontWeight: FontWeight.w500);
  static ButtonStyle splashConnectWithGoogleButtonStyle =
      ElevatedButton.styleFrom(
    side: const BorderSide(color: Colors.blue),
    backgroundColor: ColorConstants.splashBackgroundColor,
  );
  static ButtonStyle splashLoginRegisterButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: ColorConstants.loginAndRegisterButtonColor,
  );

  static const TextStyle splashConnectWithGoogleTextStyle =
      TextStyle(color: Colors.blue, fontSize: 17, fontWeight: FontWeight.w500);
}
