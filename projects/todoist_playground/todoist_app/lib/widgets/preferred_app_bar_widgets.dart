import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key,
    required this.appText,
  }) : super(key: key);
  final String appText;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(appText, style: Theme.of(context).textTheme.headline2?.copyWith(fontSize: 19)),
      centerTitle: true,
      backgroundColor: Theme.of(context).primaryColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
      ),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child:
                Text("Done", style: Theme.of(context).textTheme.headline2?.copyWith(fontSize: 17, color: Colors.red)))
      ],
    );
  }
}
