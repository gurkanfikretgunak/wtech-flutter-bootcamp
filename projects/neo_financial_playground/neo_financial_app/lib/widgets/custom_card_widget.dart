import 'package:flutter/material.dart';

class CustomCardWidget extends StatelessWidget {
  final String image, imageLabel, title, text, buttonName;

  const CustomCardWidget({
    Key? key,
    required this.image,
    required this.imageLabel,
    required this.title,
    required this.text,
    required this.buttonName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child:
                Stack(alignment: AlignmentDirectional.bottomStart, children: [
              Image.asset(
                image,
                fit: BoxFit.cover,
                height: double.infinity,
                width: double.infinity,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(imageLabel,
                    style: Theme.of(context).textTheme.titleLarge),
              ),
            ]),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Text(title, style: Theme.of(context).textTheme.labelMedium),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 7,
                          child: Text(
                            text,
                            style: const TextStyle(fontSize: 15),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: ElevatedButton(
                              onPressed: () {}, child: Text(buttonName)),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
