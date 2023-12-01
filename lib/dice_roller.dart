import 'dart:math';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  //var activeDiceImage = 'assets/images/dice-1.png';
  int currentDiceRoll = 1;

  void rollDice() {
    // int diceRoll = Random().nextInt(6) + 1;
    setState(() {
      currentDiceRoll = Random().nextInt(6) + 1;
      debugPrint('$currentDiceRoll');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(top: 20),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
