import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/constant/page_transicition_page_name.dart';
import '../../provider/page_transition_provider.dart';

class EnterView extends StatefulWidget {
  const EnterView({super.key});

  @override
  State<EnterView> createState() => _EnterViewState();
}

class _EnterViewState extends State<EnterView> {
  final _pageController = PageController(viewportFraction: 1);

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.horizontal,
      padEnds: true,
      pageSnapping: true,
      controller: _pageController,
      itemCount: PageTranscitionPageName.path.length,
      onPageChanged: (value) =>
          context.read<PageTransicitionProvider>().changeTransicition(value),
      itemBuilder: (context, index) {
        return PageTranscitionPageName.path[index];
      },
    );
  }
}



