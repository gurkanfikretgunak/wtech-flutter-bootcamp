import 'package:flutter/material.dart';
import '../views/settings/account_settings_view.dart';
import 'custom_methods.dart';

class CustomCardWidget extends StatelessWidget {
  const CustomCardWidget({
    Key? key,
    required this.listCard,
    required this.cardHeight,
  }) : super(key: key);
  final Widget listCard;
  final double cardHeight;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: SizedBox(width: 400, height: cardHeight, child: listCard),
    );
  }
}

class CustomListWidget extends StatelessWidget {
  const CustomListWidget({
    Key? key,
    required this.iconsText,
    required this.icons,
  }) : super(key: key);

  final List<String>? iconsText;
  final List<IconData>? icons;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: iconsText!.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            CustomMethods.settingModalBottomSheet(context, const AccountSettingView());
          },
          child: ListTile(
              leading: Icon(
                icons![index],
                color: Colors.red,
              ),
              title: Text(iconsText![index]),
              trailing: const Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.red,
              )),
        );
      },
    );
  }
}
