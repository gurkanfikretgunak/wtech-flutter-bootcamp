import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: Container(
          decoration: _containerBoxDecoration(context),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _customAppBarComponent(),
            ],
          ),
        ));
  }

  BoxDecoration _containerBoxDecoration(BuildContext context) =>
      BoxDecoration(color: Theme.of(context).primaryColor, borderRadius: _ContainerRadius().borderRadius);

  Row _customAppBarComponent() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // ignore: prefer_const_constructors
        Padding(
          padding: EdgeInsets.all(_CustomAppBarPadding().padding),
          child: Text(_CustomAppBarText().wtech),
        ),
        IconButton(
            onPressed: () {
              if (kDebugMode) {
                debugPrint(_CustomAppBarText().buttonText);
              }
            },
            icon: const Icon(Icons.face))
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _CustomAppBarPadding {
  final double padding = 10;
}

class _ContainerRadius {
  final BorderRadiusGeometry borderRadius = BorderRadius.circular(15);
}

class _CustomAppBarText {
  final String wtech = 'Wtech App';
  final String buttonText = 'Icon Right Button';
}
