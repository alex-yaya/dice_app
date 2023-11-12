import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colorInicio, this.colorFin, {super.key});

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
      child: Center(
        child: Image.asset('assets/images/dice-1.png'),
      ),
    );
  }
}
