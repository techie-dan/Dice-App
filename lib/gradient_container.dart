
import "package:flutter/material.dart";
import "package:first_app/dice_roller.dart";

// Alignments for column constructor.
Alignment startAlignment = Alignment.topCenter;
Alignment endAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
 const  GradientContainer(
     
      this.color,
      {super.key});
  
//List containing  for the gradient colors.
  final List<Color> color;
 

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors:
                color,
            begin: startAlignment,
            end: endAlignment),
      ),
      child: const Center( 
        child:  DiceRoller(),
      ),
    );
  }
}
