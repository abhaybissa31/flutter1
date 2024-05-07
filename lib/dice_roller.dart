import 'dart:math';

import 'package:flutter/material.dart';
import 'package:try1/gradient_textstyle.dart';
class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState(){
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>{
    var diceNum = 2;

    void rollDice() {
      setState(() {
        diceNum = Random().nextInt(6)+1;
       print("state active");
      });
    }
  
  @override
  Widget build(context) {
     return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                "assests/images/dice-$diceNum.png",
                width: 200,
              ),
              TextButton(
                  onPressed: rollDice,
                  style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(20)),
                  child: const GradientTextstyle("Roll Dice"))
            ],
          );
 
  }
}