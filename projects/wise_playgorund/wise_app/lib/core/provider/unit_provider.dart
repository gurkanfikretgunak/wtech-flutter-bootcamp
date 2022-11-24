import 'package:wise_app/unit/imports.dart';

class UnitProvider extends ChangeNotifier {
  //#region Login Page

  final TextEditingController _loginTextControllerEmail =
      TextEditingController();
  TextEditingController get loginTextControllerEmail =>
      _loginTextControllerEmail;

  final TextEditingController _loginTextControllerPassword =
      TextEditingController();
  TextEditingController get loginTextControllerPassword =>
      _loginTextControllerPassword;

  static Widget? _suffixIcon =
      SizedBox(width: 0.1, height: 0.1, child: Container());

  static Icon _passwordIcon = const Icon(Icons.remove_red_eye_outlined);
  Icon get passwordIcon => _passwordIcon;

  Widget get suffixIcon => _suffixIcon!;

  static bool _isObscure = true;
  bool get isObscure => _isObscure;

  static bool _isFormValidate = false;
  bool get isFormValidate => _isFormValidate;

  void loginCheckSufficIcon(String emailText) {
    if (_loginTextControllerEmail.text != "") {
      _suffixIcon = IconButton(
          onPressed: () {
            if (kDebugMode) {
              _loginTextControllerEmail.text = "";
              loginCheckSufficIcon("");
            }
          },
          icon: const Icon(Icons.cancel));
    } else {
      _suffixIcon = SizedBox(width: 0.1, height: 0.1, child: Container());
      _loginTextControllerEmail.text = emailText;
    }

    notifyListeners();
  }

  void changeisObscure() {
    if (_isObscure) {
      _isObscure = !_isObscure;
      _passwordIcon = const Icon(Icons.visibility_off_outlined);
    } else {
      _passwordIcon = const Icon(Icons.remove_red_eye);
      _isObscure = !_isObscure;
    }

    notifyListeners();
  }

  void formKey(bool validate) {
    _isFormValidate = validate;
    notifyListeners();
  }
  //#endregion

  //#region Sign Up Page

  //Get Email Widget
  final TextEditingController _registerTextControllerEmail =
      TextEditingController();
  TextEditingController get registerTextControllerEmail =>
      _registerTextControllerEmail;

  static Widget? _registerEmailSuffixIcon =
      SizedBox(width: 0.1, height: 0.1, child: Container());
  Widget get registerEmailSuffixIcon => _registerEmailSuffixIcon!;

  void registerEmailCheckSufficIcon(String emailText) {
    if (registerTextControllerEmail.text != "") {
      _registerEmailSuffixIcon = IconButton(
          onPressed: () {
            if (kDebugMode) {
              registerTextControllerEmail.text = "";
              registerEmailCheckSufficIcon("");
            }
          },
          icon: const Icon(
            Icons.cancel,
            size: 20,
          ));
    } else {
      _registerEmailSuffixIcon =
          SizedBox(width: 0.1, height: 0.1, child: Container());
      registerTextControllerEmail.text = emailText;
    }
    notifyListeners();
  }
  //create password widget
  final TextEditingController _registerTextControllerCreatePassword =
  TextEditingController();
  TextEditingController get registerTextControllerCreatePassword =>
      _registerTextControllerCreatePassword;


  //Select Country Widget
  final TextEditingController _registerTextControllerSelectCountry =
      TextEditingController();
  TextEditingController get registerTextControllerSelectCountry =>
      _registerTextControllerSelectCountry;

  static Widget? _registerSelectCountrySuffixIcon =
      SizedBox(width: 0.1, height: 0.1, child: Container());
  Widget get registerSelectCountrySuffixIcon =>
      _registerSelectCountrySuffixIcon!;

  void registerSelectCountryCheckSufficIcon(String emailText) {
    if (_registerTextControllerSelectCountry.text != "") {
      _registerSelectCountrySuffixIcon = IconButton(
          onPressed: () {
            if (kDebugMode) {
              _registerTextControllerSelectCountry.text = "";
              registerSelectCountryCheckSufficIcon("");
            }
          },
          icon: const Icon(
            Icons.cancel,
            size: 20,
          ));
    } else {
      _registerSelectCountrySuffixIcon =
          SizedBox(width: 0.1, height: 0.1, child: Container());
      _registerTextControllerSelectCountry.text = emailText;
    }
    notifyListeners();
  }

  //Verify Phone -> number

  final TextEditingController _registerTextControllerVerifyPhoneNumber =
      TextEditingController();
  TextEditingController get registerTextControllerVerifyPhoneNumber =>
      _registerTextControllerVerifyPhoneNumber;

  static Widget? _registerVerifyPhoneNumberSuffixIcon =
      SizedBox(width: 0.1, height: 0.1, child: Container());
  Widget get registerVerifyPhoneNumberSuffixIcon =>
      _registerVerifyPhoneNumberSuffixIcon!;

  void registerVerifyPhoneNumberCheckSufficIcon(String emailText) {
    if (_registerTextControllerVerifyPhoneNumber.text != "") {
      _registerVerifyPhoneNumberSuffixIcon = IconButton(
          onPressed: () {
            if (kDebugMode) {
              _registerTextControllerVerifyPhoneNumber.text = "";
              registerVerifyPhoneNumberCheckSufficIcon("");
            }
          },
          icon: const Icon(
            Icons.cancel,
            size: 20,
          ));
    } else {
      _registerVerifyPhoneNumberSuffixIcon =
          SizedBox(width: 0.1, height: 0.1, child: Container());
      _registerTextControllerVerifyPhoneNumber.text = emailText;
    }
    notifyListeners();
  }

  //Verify Phone -> country code
  final TextEditingController _registerTextControllerVerifyPhoneCountryCode =
      TextEditingController();
  TextEditingController get registerTextControllerVerifyPhoneCountryCode =>
      _registerTextControllerVerifyPhoneCountryCode;

  static Widget? _registerVerifyPhoneCountryCodeSuffixIcon =
      SizedBox(width: 0.1, height: 0.1, child: Container());
  Widget get registerVerifyPhoneCountryCodeSuffixIcon =>
      _registerVerifyPhoneCountryCodeSuffixIcon!;

  void registerVerifyPhoneCountryCodeCheckSufficIcon(String emailText) {
    if (_registerTextControllerVerifyPhoneCountryCode.text != "") {
      _registerVerifyPhoneCountryCodeSuffixIcon = IconButton(
          onPressed: () {
            if (kDebugMode) {
              _registerTextControllerVerifyPhoneCountryCode.text = "";
              registerVerifyPhoneCountryCodeCheckSufficIcon("");
            }
          },
          icon: const Icon(
            Icons.cancel,
            size: 20,
          ));
    } else {
      _registerVerifyPhoneCountryCodeSuffixIcon =
          SizedBox(width: 0.1, height: 0.1, child: Container());
      _registerTextControllerVerifyPhoneCountryCode.text = emailText;
    }
    notifyListeners();
  }

  //enter code page
  final TextEditingController _registerTextControllerVerifyPhoneEnterCode1 =
      TextEditingController();
  TextEditingController get registerTextControllerVerifyPhoneEnterCode1 =>
      _registerTextControllerVerifyPhoneEnterCode1;

  final TextEditingController _registerTextControllerVerifyPhoneEnterCode2 =
      TextEditingController();
  TextEditingController get registerTextControllerVerifyPhoneEnterCode2 =>
      _registerTextControllerVerifyPhoneEnterCode2;

  final TextEditingController _registerTextControllerVerifyPhoneEnterCode3 =
      TextEditingController();
  TextEditingController get registerTextControllerVerifyPhoneEnterCode3 =>
      _registerTextControllerVerifyPhoneEnterCode3;

  final TextEditingController _registerTextControllerVerifyPhoneEnterCode4 =
      TextEditingController();
  TextEditingController get registerTextControllerVerifyPhoneEnterCode4 =>
      _registerTextControllerVerifyPhoneEnterCode4;

  final TextEditingController _registerTextControllerVerifyPhoneEnterCode5 =
      TextEditingController();
  TextEditingController get registerTextControllerVerifyPhoneEnterCode5 =>
      _registerTextControllerVerifyPhoneEnterCode5;

  final TextEditingController _registerTextControllerVerifyPhoneEnterCode6 =
      TextEditingController();
  TextEditingController get registerTextControllerVerifyPhoneEnterCode6 =>
      _registerTextControllerVerifyPhoneEnterCode6;

  //#endregion
}
