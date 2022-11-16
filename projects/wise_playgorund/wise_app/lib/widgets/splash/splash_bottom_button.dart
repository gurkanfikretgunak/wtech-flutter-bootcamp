import 'package:wise_app/unit/imports.dart';

class SplashBottomButton extends StatelessWidget {
  const SplashBottomButton({
    Key? key,
    required this.widget,
  }) : super(key: key);

  final SplashOnboardingWidget widget;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
            onPressed: () {
              if (kDebugMode) {
                print("");
              }
            },
            child:const Text(
              SplashTextConstants.checkOurRates,
              style: SplashStyle.checkOurRatesStyle,
            )),
        const SizedBox(height:SplashConstants.spaceBetweenWidgetsSize),
        SizedBox(
          width: widget.size.width - 30,
          height: SplashConstants.splashGoogleButtonHeight,
          child: ElevatedButton(
              style: SplashStyle.splashConnectWithGoogleButtonStyle,
              onPressed: () {
                if (kDebugMode) {
                  print("");
                }
              },
              child: const Text(
                SplashTextConstants.connectWithGoogle,
                style: SplashStyle.splashConnectWithGoogleTextStyle,
              )),
        ),
        const SizedBox(height: SplashConstants.spaceBetweenWidgetsSize),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: widget.size.width / 2.2,
              height: SplashConstants.splashGoogleButtonHeight-5,
              child: ElevatedButton(
                  style: SplashStyle.splashLoginRegisterButtonStyle,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginPage()));
                  },
                  child: const Text(SplashTextConstants.login)),
            ),
            const SizedBox(width: SplashConstants.splashBottomButtonSpaceWidth),
            SizedBox(
              width: widget.size.width / 2.2,
              height: SplashConstants.splashGoogleButtonHeight-5,
              child: ElevatedButton(
                  style: SplashStyle.splashLoginRegisterButtonStyle,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const RegisterPage()));
                  },
                  child: const Text(SplashTextConstants.register)),
            ),
          ],
        ),
      ],
    );
  }
}