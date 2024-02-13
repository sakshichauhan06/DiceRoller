import 'package:DiceRoller/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.val1, this.val2, {super.key});
  //const Gradient Container({super.key}, required this.colorVals);
  // final List<Color> colorVals;

  const GradientContainer.purple({super.key})  
        : val1 = Colors.deepPurple, 
          val2 = Colors.indigo;

  final Color val1, val2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [ 
            val1,
            val2
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}

