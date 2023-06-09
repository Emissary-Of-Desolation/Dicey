import 'package:flutter/material.dart';
import 'dart:math';

final randomiser = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 1;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomiser.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(height: 30),
        ElevatedButton(
          onPressed: rollDice,
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
            ),
            backgroundColor:
                MaterialStateProperty.all<Color>(Colors.transparent),
            elevation: MaterialStateProperty.all<double>(8.0),
            overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
          ),
          child: Container(
            width: 200.0, // Adjust the width as per your needs
            height: 50.0, // Adjust the height as per your needs
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color.fromARGB(217, 64, 250, 197),
                  Color.fromARGB(236, 136, 123, 241),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: const Center(
              child: Text(
                "Roll Dice",
                style: TextStyle(
                  fontSize: 26.0, // Adjust the font size as per your needs
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
