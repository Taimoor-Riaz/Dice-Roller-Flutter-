import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
//  var activeDiceImage = 'assets/images/dice-3.png';
  var dicenumber = 1;
  void rollDice() {
    setState(() {
      // work like reset that will rexecute
      dicenumber = randomizer.nextInt(6) + 1;
      //  activeDiceImage = 'assets/images/dice-$dicenumber.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$dicenumber.png',
          width: 200,
        ),
        const SizedBox(
          height: 10,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.all(20),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text(
            "Roll Dice",
          ),
        ),
      ],
    );
  }
}
