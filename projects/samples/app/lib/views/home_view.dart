import 'package:app/core/extension/context_extension.dart';
import 'package:app/views/product_card_view.dart';
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
                      return const ProductCardView(
                        imagePath:
                            "https://www.dan-form.com/media/0vpid10z/arch-chair-pebble-grey-boucle-fabric-with-black-metal-legs-100205102-01-main.png?width=1120",
                        title: "Wing chair",
                        subTitle: "Goal Design",
                        price: "2380 ₺",
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
