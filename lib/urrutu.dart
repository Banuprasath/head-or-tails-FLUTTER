import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'asserts/dice-$currentDiceRoll.png',
          width: 200,
        ),
        TextButton(
            onPressed: () {
              var dicerolluhh = Random().nextInt(6) + 1;
              print(dicerolluhh);
              setState(() {
                currentDiceRoll = Random().nextInt(6) + 1;
              });
            },
            style: TextButton.styleFrom(
              padding: const EdgeInsets.only(top: 20),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28),
            ),
            child: const Text("Roll"))
      ],
    );
  }
}
