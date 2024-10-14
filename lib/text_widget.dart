import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget(this.enterText,
      {super.key}); // constructor defined to set the text and the super is used in statlesswidgetclass

  final String enterText;
  @override
  Widget build(context) {
    return Text(
      enterText,
      style: const TextStyle(
        color: Color.fromARGB(255, 255, 255, 255),
        fontSize: 28,
      ),
    );
  }
}
