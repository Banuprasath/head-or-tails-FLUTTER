import 'package:flutter/material.dart';

class testing extends StatelessWidget {
  const testing(this.text, {super.key});

  final String text;

  Widget build(context) {
    return Text(text,
        style: const TextStyle(fontSize: 25, color: Colors.white));
  }
}
