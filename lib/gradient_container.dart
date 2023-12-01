import 'package:dice_app/dice_roller.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colorInicio, this.colorFin, {super.key});
  const GradientContainer.green({super.key})
      : colorInicio = Colors.green,
        colorFin = Colors.greenAccent;

  final Color colorInicio;
  final Color colorFin;

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
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
