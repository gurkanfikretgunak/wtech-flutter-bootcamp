import 'package:wise_app/unit/imports.dart';

class UnitProvider extends ChangeNotifier {
  final TextEditingController _textEditingControllerEmail =
      TextEditingController();
  TextEditingController get textEditingControllerEmail =>
      _textEditingControllerEmail;

  static Widget? _isSuffixIcon =
      SizedBox(width: 0.1, height: 0.1, child: Container());

  static Icon _passwordIcon =const Icon(Icons.remove_red_eye_outlined);
  Icon get passwordIcon => _passwordIcon;

  Widget get isSuffixIcon => _isSuffixIcon!;

  static bool _isObsor = true;
  bool get isObsor => _isObsor;

  void checkSufficIcon(String emailText) {
    if (_textEditingControllerEmail.text != "") {
      _isSuffixIcon = IconButton(
          onPressed: () {
            if (kDebugMode) {
              _textEditingControllerEmail.text = "";
              checkSufficIcon("");
            }
          },
          icon: const Icon(Icons.cancel));
    } else {
      _isSuffixIcon = SizedBox(width: 0.1, height: 0.1, child: Container());
      _textEditingControllerEmail.text = emailText;
    }

    notifyListeners();
  }

  void changeObser() {
    if (_isObsor) {
      _isObsor = !_isObsor;
      _passwordIcon = const Icon(Icons.visibility_off_outlined);
    } else {
      _passwordIcon = const Icon(Icons.remove_red_eye);
      _isObsor = !_isObsor;
    }

    notifyListeners();
  }
}
