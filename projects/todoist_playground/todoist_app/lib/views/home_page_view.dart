import 'package:flutter/material.dart';
import 'package:todoist_app/constants/custom_constants.dart';
import 'package:todoist_app/core/themes/custom_themes.dart';
import 'package:todoist_app/views/welcome_page_view.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Today"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search_rounded),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz_rounded)),
        ],
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: size.height / 2,
            width: size.width,
            child: Image.asset(
              CustomImagePathConstants.homePagePath,
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Get a clear view of the day ahead ',
              style: Theme.of(context).textTheme.subtitle1!.copyWith(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30.0),
            child: Text(
              'All your tasks that are due today will show up here.Tap + to add a task',
              style: Theme.of(context).textTheme.subtitle1,
              textAlign: TextAlign.center,
            ),
          ),
          CustomOutlineButton(imagePath: CustomImagePathConstants.lampPath),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
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
                "Establish a daily habit",
                style: CustomTheme.customLightThemeData()
                    .textTheme
                    .headline2!
                    .copyWith(fontSize: 16, fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
      ),
    );
  }
}