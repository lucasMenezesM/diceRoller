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
  var diceNumber1 = 0;
  var diceNumber2 = 0;
  var result = "";
  void rollDice() {
    setState(() {
      diceNumber1 = randomizer.nextInt(6) + 1;
      diceNumber2 = randomizer.nextInt(6) + 1;

      if (diceNumber1 > diceNumber2) {
        result = "The first dice won!";
      } else if (diceNumber1 == diceNumber2) {
        result = "It's a draw!";
      } else {
        result = "The second dice won!";
      }
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (diceNumber1 > 0)
          Column(
            children: [
              Image.asset("assets/images/dice-$diceNumber1.png", width: 200),
              Image.asset("assets/images/dice-$diceNumber2.png", width: 200),
            ],
          ),
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
              StyledText(
                  text: diceNumber1 == 0
                      ? "Click this button to roll the dice and see who wins."
                      : result,
                  size: 20)
            ],
          ),
        )
      ],
    );
  }
}
