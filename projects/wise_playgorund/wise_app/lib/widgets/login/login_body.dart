import 'package:wise_app/unit/imports.dart';
import 'package:wise_app/unit/login_constants/login_constants.dart';
import 'package:wise_app/unit/login_constants/login_text_constants.dart';

class LoginPageBody extends StatelessWidget {
  const LoginPageBody({
    Key? key,
    required this.size,
    required this.provider,
    required TextEditingController textEditingControllerEmail,
    required TextEditingController textEditingControllerPassword,
  })  : _textEditingControllerEmail = textEditingControllerEmail,
        _textEditingControllerPassword = textEditingControllerPassword,
        super(key: key);

  final Size size;
  final ThemeProvider provider;
  final TextEditingController _textEditingControllerEmail;
  final TextEditingController _textEditingControllerPassword;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: size.height - 300,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  LoginTextConstants.login,
                  style: LoginStyle.topTextStyle(provider),
                ),
              ],
            ),
            const SizedBox(
              height: LoginConstants.bodyAndTopTextSpaceSize,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      LoginTextConstants.email,
                      style: LoginStyle.emailTextStyle(provider),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                    controller: _textEditingControllerEmail,
                    decoration: InputDecoration(
                      alignLabelWithHint: true,
                      suffixIcon: IconButton(
                          onPressed: () {
                            if (kDebugMode) {}
                          },
                          icon: Icon(Icons.cancel)),
                      focusedBorder: LoginStyle.textFieldFocusedBorder,
                      enabledBorder: LoginStyle.textFieldEnabledBorder,
                    )),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(LoginTextConstants.password,
                        style: LoginStyle.passwordTextStyle(provider)),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                    controller: _textEditingControllerPassword,
                    decoration: InputDecoration(
                      alignLabelWithHint: true,
                      suffixIcon: IconButton(
                          onPressed: () {
                            if (kDebugMode) {}
                          },
                          icon: Icon(Icons.remove_red_eye_outlined)),
                      focusedBorder: LoginStyle.textFieldFocusedBorder,
                      enabledBorder: LoginStyle.textFieldEnabledBorder,
                    )),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            SizedBox(
                width: size.width,
                height: 50,
                child: ElevatedButton(
                    style: LoginStyle.loginButtonStyle,
                    onPressed: () {
                      if (kDebugMode) {}
                    },
                    child: const Text(LoginTextConstants.login))),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      if (kDebugMode) {}
                    },
                    child: const Text(
                      LoginTextConstants.troubleLoggingIn,
                      style: LoginStyle.troubleTextStyle,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
