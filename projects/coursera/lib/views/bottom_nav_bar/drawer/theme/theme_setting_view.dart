import 'package:coursera/core/components/custom_scaffold.dart';
import 'package:coursera/views/bottom_nav_bar/drawer/theme/theme_setting_view_model.dart';
import 'package:coursera/views/bottom_nav_bar/drawer/theme/widgets/labeled_radio.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import '../../../../core/components/custom_app_bar.dart';

class ThemeSettingView extends StatefulWidget {
  const ThemeSettingView({super.key});

  @override
  State<ThemeSettingView> createState() => _ThemeSettingViewState();
}

class _ThemeSettingViewState extends State<ThemeSettingView> {
  @override
  Widget build(BuildContext context) {
    var provider = ThemeSettingViewModel().of(context);

    return CustomScaffold(
      appBar: CustomAppBar.customAppBar(context: context, titleText: 'Theme'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          context.emptySizedHeightBoxLow,
          LabeledRadio(
            label: 'Dark Theme',
            value: true,
            groupValue: provider.isRadioSelected,
            onChanged: (bool newValue) {
              provider.isRadioSelected = newValue;
              provider.darkTheme = true;
            },
          ),
          LabeledRadio(
            label: 'Light Theme',
            value: false,
            groupValue: provider.isRadioSelected,
            onChanged: (bool newValue) {
              provider.isRadioSelected = newValue;
              provider.darkTheme = false;
            },
          ),
        ],
      ),
    );
  }
}
