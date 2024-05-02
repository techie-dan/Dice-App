import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
        // List of colors parsed into the Gradient constructor. 
           [Color.fromARGB(255, 64, 6, 74),
             Color.fromARGB(255, 6, 46, 66),
              Color.fromARGB(255, 55, 10, 177)]),

      ),
    ),
  );
}
