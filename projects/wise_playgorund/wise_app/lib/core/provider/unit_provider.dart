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
          icon: const Icon(Icons.cancel,size: 20,));
    } else {
      _registerEmailSuffixIcon =
          SizedBox(width: 0.1, height: 0.1, child: Container());
      registerTextControllerEmail.text = emailText;
    }
    notifyListeners();
  }


  //Select Country Widget
  final TextEditingController _registerTextControllerSelectCountry =
  TextEditingController();
  TextEditingController get registerTextControllerSelectCountry =>
      _registerTextControllerSelectCountry;

  static Widget? _registerSelectCountrySuffixIcon =
  SizedBox(width: 0.1, height: 0.1, child: Container());
  Widget get registerSelectCountrySuffixIcon => _registerSelectCountrySuffixIcon!;


  void registerSelectCountryCheckSufficIcon(String emailText) {
    if (_registerTextControllerSelectCountry.text != "") {
      _registerSelectCountrySuffixIcon = IconButton(
          onPressed: () {
            if (kDebugMode) {
              _registerTextControllerSelectCountry.text = "";
              registerSelectCountryCheckSufficIcon("");
            }
          },
          icon: const Icon(Icons.cancel,size: 20,));
    } else {
      _registerSelectCountrySuffixIcon =
          SizedBox(width: 0.1, height: 0.1, child: Container());
      _registerTextControllerSelectCountry.text = emailText;
    }
    notifyListeners();
  }

  //#endregion
}
