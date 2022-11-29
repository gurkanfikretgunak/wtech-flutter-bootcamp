import 'package:flutter/cupertino.dart';

class ButtonPadding extends StatelessWidget {
  const ButtonPadding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(padding: EdgeInsets.all(5));
  }
}
class DefaultRowPadding extends StatelessWidget {
  const DefaultRowPadding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(top: 8));
  }
}

class MessagePadding extends StatelessWidget {
  const MessagePadding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(padding: EdgeInsets.only(left: 30));
  }
}
