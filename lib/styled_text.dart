import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.texto, {super.key});
  final String texto;

  @override
  Widget build(BuildContext context) {
    return Text(
      texto,
      style: const TextStyle(
        fontSize: 30.0,
        color: Colors.white,
      ),
    );
  }
}
