import 'package:flutter/material.dart';
import 'package:first_app/dice_roller.dart';

Alignment? startAlignment; // variable type, variable with no value
var alignTopCenter = Alignment.topCenter;
var alignBottomCenter = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  // Constructor Function
  const GradientContainer.red({super.key})
      : color1 = Colors.red,
        color2 = Colors.orange;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color1,
            color2,
          ],
          begin: alignTopCenter,
          end: alignBottomCenter,
        ),
      ),
      child: const Center(
          child: DiceRoller(),
      ),
    );
  }
}
