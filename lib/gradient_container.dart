import 'package:dice_roller/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContrainer extends StatelessWidget {
  const GradientContrainer(this.color1, this.color2, {super.key }); // can use positional param with required keyword

  const GradientContrainer.purple({super.key}) 
    : color1 = Colors.deepPurple,
      color2 = Colors.indigo;

  final Color color1;
  final Color color2;

  rollDice() {
    
  }

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        )
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
