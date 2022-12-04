import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/data/constants/padding_constants.dart';
import '../../core/provider/onboard_state.dart';

class CustomLinearProgressIndicatorWidget extends StatefulWidget {
  const CustomLinearProgressIndicatorWidget({
    Key? key,
    required this.widgetIndex,
    required this.orderIndex,
  }) : super(key: key);

  final int widgetIndex;
  final int orderIndex;

  @override
  State<CustomLinearProgressIndicatorWidget> createState() =>
      _CustomLinearProgressIndicatorWidgetState();
}

class _CustomLinearProgressIndicatorWidgetState
    extends State<CustomLinearProgressIndicatorWidget>
    with TickerProviderStateMixin {
  late AnimationController controller;
  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
        setState(() {});
        //TODO: This side will be in provider
      });
    controller.animateTo(1.0).then((value) => widget.widgetIndex < 3
        ? Provider.of<OnboardState>(context, listen: false)
            .changePageContoller(widget.widgetIndex + 1)
        : null);

    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: PaddingConstants.smallHorizontalPadding,
        child: LinearProgressIndicator(
          color: Colors.white,
          backgroundColor: Colors.grey,
          value: widget.widgetIndex == widget.orderIndex
              ? controller.value
              : widget.widgetIndex > widget.orderIndex
                  ? 100
                  : 0,
        ),
      ),
    );
  }
}
