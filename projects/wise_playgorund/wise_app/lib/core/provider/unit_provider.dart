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

  final TextEditingController _registerTextControllerEmail =
      TextEditingController();
  TextEditingController get registerTextControllerEmail =>
      _loginTextControllerEmail;

  static Widget? _registerSuffixIcon =
      SizedBox(width: 0.1, height: 0.1, child: Container());
  Widget get registerSuffixIcon => _registerSuffixIcon!;

  void registerCheckSufficIcon(String emailText) {
    if (registerTextControllerEmail.text != "") {
      _registerSuffixIcon = IconButton(
          onPressed: () {
            if (kDebugMode) {
              registerTextControllerEmail.text = "";
              registerCheckSufficIcon("");
            }
          },
          icon: const Icon(Icons.cancel));
    } else {
      _registerSuffixIcon =
          SizedBox(width: 0.1, height: 0.1, child: Container());
      registerTextControllerEmail.text = emailText;
    }
    notifyListeners();
  }

  //#endregion
}
