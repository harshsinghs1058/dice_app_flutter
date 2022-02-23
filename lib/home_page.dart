import 'package:flutter/material.dart';
import 'dart:math' ;
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String diceImgPath = "assets/images/dice_1.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
            child: SizedBox(
              height: 200,
              width: 200,
              child: Image.asset(diceImgPath),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)
              )
            ),
            onPressed: () =>
              setState(() => diceImgPath = "assets/images/dice_"+ (Random().nextInt(6) + 1).toString()+".png" ),
            child: const Text(
              "Roll Dice",
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
          )
        ],
      ),
    );
  }
}
