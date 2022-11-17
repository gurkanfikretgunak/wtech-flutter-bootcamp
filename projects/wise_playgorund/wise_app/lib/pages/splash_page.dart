import 'package:wise_app/unit/imports.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      top: false,
      //custom olacak
      child: AnimatedSplashScreen(
        splash: SplashWidget(
          size: size,
        ),
        splashIconSize: size.height,
        duration: SplashConstants.splashDurationTime,
        splashTransition: SplashTransition.fadeTransition,
        pageTransitionType: PageTransitionType.leftToRightWithFade,
        animationDuration: SplashConstants.splashAnimationTime,
        nextScreen: SplashOnboardingWidget(size),
      ),
    );
  }
}
