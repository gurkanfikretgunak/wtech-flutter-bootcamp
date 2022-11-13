import 'package:masterclass_app/core/enums/app_images.dart';
import 'package:masterclass_app/ui/pages/introduction_pages/widgets/intro_slide.dart';

class IntroductionPageConstants {
  static final slider = [
    IntroSlide(
        imagePath: PngImages.slide1.path,
        title: 'Learn from the best.',
        description:
            'Online classes taught by the world\'s best. \nGordon Ramsay, Stephen Curry and more.'),
    IntroSlide(
        imagePath: PngImages.slide2.path,
        title: 'Download and watch anytime.',
        description:
            'Download digestible lessons that you can \nwatch offline and at any time. '),
    IntroSlide(
        imagePath: PngImages.slide3.path,
        title: 'Explore a range of topics.',
        description:
            'Perfect hommade pasta, or write a \nscreenplay-all with acces to 148+classes.'),
  ];
}
