import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Roll Em\'')),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    );
  }
}

generateRandomNumber() {
  Random random = new Random();
  int randomNumber = random.nextInt(6) + 1;
  return randomNumber;
}

class DicePage extends StatefulWidget {
  DicePage({Key key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceIndex = 1;
  int rightDiceIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      children: [
        Expanded(
          child: TextButton(
            onPressed: () {
              setState(() {
                leftDiceIndex = generateRandomNumber();
              });
            },
            child: Image.asset('images/dice$leftDiceIndex.png'),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {
              setState(() {
                rightDiceIndex = generateRandomNumber();
              });
            },
            child: Image.asset('images/dice$rightDiceIndex.png'),
          ),
        )
      ],
    ));
  }
}
