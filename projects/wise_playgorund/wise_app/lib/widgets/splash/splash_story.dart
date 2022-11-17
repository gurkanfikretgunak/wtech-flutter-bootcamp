import 'package:wise_app/unit/imports.dart';

class SplashStory extends StatelessWidget {
  const SplashStory({
    Key? key,
    required this.widget,
    required this.listStory,
    required this.indicatorAnimationController,
  }) : super(key: key);

  final SplashOnboardingWidget widget;
  final List<Image> listStory;
  final ValueNotifier<IndicatorAnimationCommand> indicatorAnimationController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.size.width,
      height: widget.size.height / 1.5,
      child: StoryPageView(
        initialPage: 0,
        indicatorVisitedColor: ColorConstants.indicatorVisitedColor,
        indicatorUnvisitedColor: ColorConstants.indicatorUnvisitedColor,
        backgroundColor: ColorConstants.splashBackgroundColor,
        itemBuilder: (context, pageIndex, storyIndex) {
          return Container(
              color: ColorConstants.splashBackgroundColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                      width: widget.size.width,
                      height: SplashConstants.storyHeight,
                      child: listStory[storyIndex]),
                ],
              ));
        },
        pageLength: SplashConstants.pageLength,
        storyLength: (int pageIndex) {
          return SplashConstants.storyLength;
        },
        indicatorAnimationController: indicatorAnimationController,
        initialStoryIndex: (pageIndex) {
          if (pageIndex == 0) {
            return 0;
          }
          return 0;
        },
      ),
    );
  }
}
