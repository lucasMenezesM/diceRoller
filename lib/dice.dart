import "package:flutter/material.dart";
import "dart:math";

import "package:first_app/styled_text.dart";

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var diceNumber = 1;
  void rollDice() {
    setState(() {
      diceNumber = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/dice-$diceNumber.png", width: 200),
        Container(
          margin: const EdgeInsets.only(top: 35),
          child: Column(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                onPressed: rollDice,
                child: const StyledText(
                  text: "Roll",
                  size: 30,
                ),
              ),
              const StyledText(
                  text: "CLick this button to roll the dice.", size: 20)
            ],
          ),
        )
      ],
    );
  }
}
