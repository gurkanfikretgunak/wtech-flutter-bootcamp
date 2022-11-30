import 'package:flutter/material.dart';

class PageViewChildWidget extends StatelessWidget {
  const PageViewChildWidget(
      {super.key,
      required this.pageIndex,
      required this.headlineText,
      required this.body,
      required this.typeTitle,
      this.miniText});
  final String headlineText, body, typeTitle;
  final String? miniText;
  final int pageIndex;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          Expanded(
            child: Container(
                width: double.infinity,
                color: Colors.black,
                child: Stack(children: [
                  Image.asset(
                      fit: BoxFit.fill,
                      'assets/images/${typeTitle.toLowerCase()}${pageIndex + 1}.jpg'),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(
                          Icons.close,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            height: 5,
                            color: Colors.white,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            height: 5,
                            color: Colors.white,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            height: 5,
                            color: Colors.white,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            height: 5,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  )
                ])),
          ),
          Expanded(
              child: Container(
            color: Colors.black,
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Text(
                    'NEO $typeTitle',
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(headlineText,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          color: Colors.white,
                        )),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Text(body,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Colors.white,
                          )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: miniText != null
                      ? Text(
                          textAlign: TextAlign.center,
                          miniText!,
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    color: Colors.white,
                                  ),
                        )
                      : null,
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 30.0,
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(
                        context,
                        '/Register',
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Create a profile',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )),
        ]),
      ),
    );
  }
}
