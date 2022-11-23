import 'package:flutter/material.dart';
import 'package:todoist_app/views/auth/pick_theme_page_view.dart';
import 'package:todoist_app/views/settings/settings_app.dart';
import '../constants/image/image_path_constants.dart';
import '../constants/text/home_page_contants.dart';
import '../widgets/custom_methods.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text(CustomHomeText.todayText),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search_rounded)),
          IconButton(
              onPressed: () {
                CustomMethods.settingModalBottomSheet(context, const SettingsApp());
              },
              icon: const Icon(Icons.settings)),
        ],
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
              height: size.height / 2,
              width: size.width,
              child: Image.asset(CustomImagePathConstants.homePagePath, fit: BoxFit.fill)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              CustomHomeText.getClearText,
              style: Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30.0),
            child: Text(
              CustomHomeText.hereTapText,
              style: Theme.of(context).textTheme.subtitle1,
              textAlign: TextAlign.center,
            ),
          ),
          const CustomOutlineButton(imagePath: CustomImagePathConstants.lampPath),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          CustomMethods.settingModalBottomSheet(context, const ThemeSwitcher());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class CustomOutlineButton extends StatelessWidget {
  const CustomOutlineButton({
    Key? key,
    required this.imagePath,
  }) : super(key: key);
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: SizedBox(
        height: 35,
        width: 250,
        child: OutlinedButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(
                imagePath,
                width: 25,
                color: Colors.orange[400],
              ),
              Text(
                CustomHomeText.establishDailyText,
                style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 16, fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
      ),
    );
  }
}
