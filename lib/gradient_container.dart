// import "dart:math";

import "package:flutter/material.dart";

// import "package:first_app/styled_text.dart";
import "package:first_app/dice.dart";

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.blue({super.key})
      : color1 = const Color.fromARGB(255, 74, 132, 180),
        color2 = const Color.fromARGB(255, 16, 73, 120);

  const GradientContainer.purple({super.key})
      : color1 = const Color.fromARGB(255, 57, 5, 76),
        color2 = const Color.fromARGB(255, 77, 9, 133);

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [color1, color2],
            begin: Alignment.bottomCenter,
            end: Alignment.centerLeft),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}

// class Dart extends StatelessWidget{
//   const Dart({super.key})
  
//   // Widget build(context){
//   //   return 
//   // }
// }