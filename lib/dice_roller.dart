import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget{

  //constructor
  DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }

}

class _DiceRollerState extends State<DiceRoller>{

  

  var activeDiceImage = 'assets/images/dice-images/dice-2.png';

  void rollDice(){
    setState(() {
      var number = randomizer.nextInt(6) + 1;      //nextInt(6) -> 0 to 5
      activeDiceImage = 'assets/images/dice-images/dice-$number.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  activeDiceImage ,
                  width: 200,
                ),
                TextButton(
                  onPressed: rollDice, 
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.all(20),
                    foregroundColor: Colors.white, 
                    textStyle: const TextStyle(
                      fontSize: 28,
                      ),
                    ),
                  child: const Text('Roll Dice'),
                ),
              ],
            );
  }

}