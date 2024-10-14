import 'package:dice_roll/dice_roller.dart';
import 'package:flutter/material.dart';

var number = 1;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});
  // GradientContainer.purple({super.key})
  //     : colors = [Colors.black, Colors.black26]; // You can set  multiple Construcots Function in Flutter
  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
