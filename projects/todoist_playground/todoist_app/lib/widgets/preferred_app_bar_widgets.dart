import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoist_app/core/provider/service_provider.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key,
    required this.appText,
    this.pickImage,
  }) : super(key: key);
  final String appText;
  final File? pickImage;
  @override
  Widget build(BuildContext context) {
    ServiceProvider _serviceProvider = Provider.of<ServiceProvider>(context);

    return AppBar(
      title: Text(appText, style: Theme.of(context).textTheme.headline2?.copyWith(fontSize: 19)),
      centerTitle: true,
      backgroundColor: Theme.of(context).primaryColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
      ),
      actions: [
        TextButton(
            onPressed: () async {
              bool isCheck = await context.read<ServiceProvider>().updateImage(pickImage.toString());

              if (isCheck) {
                // ignore: use_build_context_synchronously
                Navigator.pop(context);
                final snackBar = SnackBar(
                  content: const Text('Change Your Info!'),
                  action: SnackBarAction(
                    label: 'Undo',
                    onPressed: () {},
                  ),
                );

                // ignore: use_build_context_synchronously
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              } else {
                // ignore: use_build_context_synchronously
                Navigator.pop(context);

                // ignore: use_build_context_synchronously
                final snackBar = SnackBar(
                  content: const Text('ERROR!'),
                  action: SnackBarAction(
                    label: 'Undo',
                    onPressed: () {},
                  ),
                );

                // ignore: use_build_context_synchronously
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              }
            },
            child:
                Text("Done", style: Theme.of(context).textTheme.headline2?.copyWith(fontSize: 17, color: Colors.red)))
      ],
    );
  }
}
