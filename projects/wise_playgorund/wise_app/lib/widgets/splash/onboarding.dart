import 'package:wise_app/unit/imports.dart';

class SplashOnboardingWidget extends StatefulWidget {
  final Size size;
  SplashOnboardingWidget(this.size);

  @override
  State<SplashOnboardingWidget> createState() => _SplashOnboardingWidgetState();
}

class _SplashOnboardingWidgetState extends State<SplashOnboardingWidget> {
  late ValueNotifier<IndicatorAnimationCommand> indicatorAnimationController;

  final listStory = [
    Image.asset(SplashPathConstants.storyPath1),
    Image.asset(SplashPathConstants.storyPath2),
    Image.asset(SplashPathConstants.storyPath3),
    Image.asset(SplashPathConstants.storyPath4),
    Image.asset(SplashPathConstants.storyPath5),
  ];

  void controllerDispose() {
    indicatorAnimationController.dispose();
  }

  void controllerInitialising() {
    indicatorAnimationController = ValueNotifier<IndicatorAnimationCommand>(
        IndicatorAnimationCommand.resume);
  }

  @override
  void initState() {
    super.initState();
    controllerInitialising();
  }

  @override
  void dispose() {
    controllerDispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstants.splashBackgroundColor,
        body: Padding(
          padding:  const EdgeInsets.all(SplashConstants.splashOnboardingPaddingSize),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SplashStory(
                    widget: widget,
                    listStory: listStory,
                    indicatorAnimationController: indicatorAnimationController),
                SplashBottomButton(
                  widget: widget,
                )
              ],
            ),
          ),
        ));
  }
}
