import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();
String flipval1 = "Therla";

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 1;

  void runer() {
    /*var dicerolluhh = Random().nextInt(6) + 1;
              print(dicerolluhh);*/
    setState(() {
      currentDiceRoll = randomizer.nextInt(2) + 1;
      print(currentDiceRoll);
    });
  }

  @override
  Widget build(BuildContext context) {
    if (currentDiceRoll == 1) {
      print("True");
      flipval1 = "Heads";
      print(flipval1);
    } else {
      flipval1 = "Tail!..";
    }
    // TODO: implement build
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'asserts/dice-$currentDiceRoll.png',
          width: 200,
        ),
        SizedBox(
            width: 70,
            height: 50,
            child: Text(
              flipval1,
              style: TextStyle(fontSize: 24, color: Colors.red),
            )),
        ElevatedButton(
            onPressed: runer,
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(5),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28),
            ),
            child: const Text("Roll"))
      ],
    );
  }
}
