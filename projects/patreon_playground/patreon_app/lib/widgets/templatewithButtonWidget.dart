import 'package:flutter/material.dart';
import 'package:patreon_app/widgets/templatewithoutButtonWidget.dart';

import '../views/search_page.dart';

class TemplateWithButtonWidget extends StatelessWidget {
  const TemplateWithButtonWidget({
    Key? key,
    required this.imagePath,
    required this.underImageText,
    required this.buttonText,
  }) : super(key: key);

  final String imagePath;
  final String underImageText;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TemplateWithoutButtonWidget(
            imagePath: imagePath, underImageText: underImageText),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            //width: 180,
            width: MediaQuery.of(context).size.width * 0.4,
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(10)),
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SearchPage()),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Icon(
                      Icons.search,
                    ),
                    Text(
                      buttonText,
                    )
                  ],
                )),
          ),
        )
      ],
    );
  }
}
