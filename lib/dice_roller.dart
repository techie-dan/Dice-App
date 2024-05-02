import "package:flutter/material.dart";
import "dart:math";
// Global property that stores random values.
final randomizer = Random();
// Vertical center placement for the column constructor.
MainAxisSize verticalAlignCenter = MainAxisSize.min;
// Stateful Widget created to change the dice when the rollDice Method is initialized.
class DiceRoller extends StatefulWidget {
 const  DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}
class _DiceRollerState extends State<DiceRoller> {

  var currentDiceRoll = 2;

 void rollDice(){
 // Changes the internal value of the property when roll button is pressed.
  setState(() {
    currentDiceRoll = randomizer.nextInt(6) + 1; 
  });
  
 }
  

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: verticalAlignCenter,
      children: [

  // Locally stored image.
        Image.asset("assets/images/dice-$currentDiceRoll.png", width: 150),
        const SizedBox(height: 20),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 20)),
            child: const Text("Roll"))
      ],
    );
  }
}
