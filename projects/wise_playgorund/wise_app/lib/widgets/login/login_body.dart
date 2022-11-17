import 'package:provider/provider.dart';
import 'package:wise_app/core/provider/unit_provider.dart';
import 'package:wise_app/unit/imports.dart';


class LoginPageBody extends StatelessWidget {
  const LoginPageBody({
    Key? key,
    required this.size,
    required this.providerTheme,
    required TextEditingController textEditingControllerEmail,
    required TextEditingController textEditingControllerPassword,
  })  : _textEditingControllerEmail = textEditingControllerEmail,
        _textEditingControllerPassword = textEditingControllerPassword,
        super(key: key);

  final Size size;
  final ThemeProvider providerTheme;
  final TextEditingController _textEditingControllerEmail;
  final TextEditingController _textEditingControllerPassword;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<UnitProvider>(context);
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
                  style: LoginStyle.topTextStyle(providerTheme),
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
                      style: LoginStyle.emailTextStyle(providerTheme),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                    controller: provider.textEditingControllerEmail,
                    decoration: InputDecoration(
                      alignLabelWithHint: true,
                      suffixIcon:  provider.isSuffixIcon,
                      focusedBorder: LoginStyle.textFieldFocusedBorder,
                      enabledBorder: LoginStyle.textFieldEnabledBorder,
                    ),
                  onChanged: (e){
                    provider.checkSufficIcon(e);
                  },
                ),
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
                        style: LoginStyle.passwordTextStyle(providerTheme)),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                TextField(
                    controller: _textEditingControllerPassword,
                    obscureText: provider.isObsor,
                    decoration: InputDecoration(
                      alignLabelWithHint: true,
                      suffixIcon: IconButton(
                          onPressed: () {
                            if (kDebugMode) {
                              provider.changeObser();
                            }
                          },
                          icon:provider.passwordIcon),
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
                    child: const Text(LoginTextConstants.login,
                    style: LoginStyle.loginButtonTextStyle,
                    ))),
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
