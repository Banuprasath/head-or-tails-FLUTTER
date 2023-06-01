import 'package:flutter/material.dart';
import 'style.dart';
import 'urrutu.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(body: GradientContainer()),
    ),
  );
}

class GradientContainer extends StatelessWidget {
  GradientContainer({super.key});
  //var activeDiceImage = 'asserts/v.png';
  var activeDiceImage = 'asserts/dice-2.png';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 33, 147, 176),
            Color.fromARGB(255, 109, 213, 237)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ), /*Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              activeDiceImage,
              width: 200,
            ),
            TextButton(
                onPressed: () {
                  activeDiceImage = 'asserts/dice-6.png';
                },
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.only(top: 20),
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(fontSize: 28),
                ),
                child: const Text("Roll"))
          ],
        ),*/
    );
  }
}
