import 'package:flutter/material.dart';

class MaintainSemanticsText extends StatelessWidget {
  const MaintainSemanticsText({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: false,
      maintainSemantics: true,
      maintainSize: true,
      maintainAnimation: true,
      maintainState: true,
      child: Text(
        text,
        semanticsLabel: text,
      ),
    );
  }
}
