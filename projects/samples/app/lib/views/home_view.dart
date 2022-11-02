import 'package:app/widgets/custom_scaffold.dart';
import 'package:app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBarTitleText: "Search",
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: const [
            CustomTextFormField(hintText: "Chair 1"),
          ],
        ),
      ),
    );
  }
}
