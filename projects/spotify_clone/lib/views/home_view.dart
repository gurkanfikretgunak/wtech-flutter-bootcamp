import 'package:flutter/material.dart';
import 'package:spotify_clone/core/extension/context_extension.dart';
import 'package:spotify_clone/widgets/custom_scaffold.dart';
import 'package:spotify_clone/widgets/custom_text_form_field.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBarTitleText: "Search",
      body: Padding(
        padding: context.paddingAllLow,
        child: Column(
          children: [
            const Expanded(
              child: CustomTextFormField(hintText: "Chair 1"),
            ),
            Expanded(
              flex: 10,
              child: Padding(
                padding: context.paddingBodyVerticalLow,
                child: GridView.builder(
                    physics: const BouncingScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return const SizedBox();
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
