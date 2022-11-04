import 'package:flutter/material.dart';

class SwitchListtileWidget extends StatefulWidget {
  const SwitchListtileWidget({super.key});

  @override
  State<SwitchListtileWidget> createState() => _SwitchListtileWidgetState();
}

class _SwitchListtileWidgetState extends State<SwitchListtileWidget> {
  bool isDark = false;
  static const String theme = 'Change Theme';
  void _changeTheme(bool value) {
    setState(() {
      isDark = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      onChanged: _changeTheme,
      value: isDark,
      secondary: Text(theme, style: Theme.of(context).textTheme.headline6),
    );
  }
}
