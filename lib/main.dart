import 'package:dice_app/gradient_container.dart';
import 'package:dice_app/styled_text.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          Colors.deepOrange,
          Colors.deepOrange.shade200,
        ),
      ),
    ),
  );
}
