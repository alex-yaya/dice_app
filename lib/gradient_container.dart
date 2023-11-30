import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  GradientContainer(this.colorInicio, this.colorFin, {super.key});
  GradientContainer.green({super.key})
      : colorInicio = Colors.green,
        colorFin = Colors.greenAccent;

  final Color colorInicio;
  final Color colorFin;
  var activeDiceImage = 'assets/images/dice-1.png';

  void rollDice() {
    activeDiceImage = 'assets/images/dice-2.png';
    print('Dice 2');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [colorInicio, colorFin],
        ),
      ),
      child: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            activeDiceImage,
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
      )),
    );
  }
}
